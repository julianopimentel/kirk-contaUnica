@extends('dashboard.base')

@section('content')

<div class="container-fluid">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
                <div class="card">
                    <div class="card-header">
                        <i class="fa fa-align-justify"></i> Calendar


                        <div class="container">
                            <div id='calendar'></div>
                        </div>
                    </div>
                </div>
            </div>
                <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
                    <div class="card">
                    <div class="card-header"><strong>Adicionar agendamento</strong> <small>detalhado</small></div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="form-group">
                            <label for="name">Titulo</label>
                            <input class="form-control" id="name" type="text" placeholder="Enter your name">
                          </div>
                        </div>
                      </div>
                      <!-- /.row-->
                      <div class="row">
                          <div class="form-group">
                             <label for="ccyear">Inicio</label>
                              <input class="form-control" name="birth_at" type="date" placeholder="date">
                          </div>
                          <div class="form-group">
                             <label for="ccyear">Fim</label>
                              <input class="form-control" name="birth_at" type="date" placeholder="date">
                        </div>
                      </div>
                      <!-- /.row-->
                    </div>
                  </div>
                    <div class="card">
                    <div class="card-header"><strong>Histórico</strong> <small>últimos agendamentos</small></div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="form-group">
                            <label for="name">Titulo</label>
                            <input class="form-control" id="name" type="text" placeholder="Enter your name">
                          </div>
                        </div>
                      </div>
                      <!-- /.row-->
                    </div>
                  </div>
                </div>

                <script>
$(document).ready(function () {
   
var SITEURL = "{{ url('/') }}";
  
$.ajaxSetup({
    headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
  
var calendar = $('#calendar').fullCalendar({
                    editable: true,
                    events: SITEURL + "/calender",
                    displayEventTime: false,
                    editable: true,
                    eventRender: function (event, element, view) {
                        if (event.allDay === 'true') {
                                event.allDay = true;
                        } else {
                                event.allDay = false;
                        }
                    },
                    selectable: true,
                    selectHelper: true,
                    select: function (start, end, allDay) {
                        var title = prompt('Event Title:');
                        if (title) {
                            var start = $.fullCalendar.formatDate(start, "Y-MM-DD");
                            var end = $.fullCalendar.formatDate(end, "Y-MM-DD");
                            $.ajax({
                                url: SITEURL + "/fullcalenderAjax",
                                data: {
                                    title: title,
                                    start: start,
                                    end: end,
                                    type: 'add'
                                },
                                type: "POST",
                                success: function (data) {
                                    displayMessage("Event Created Successfully");
  
                                    calendar.fullCalendar('renderEvent',
                                        {
                                            id: data.id,
                                            title: title,
                                            start: start,
                                            end: end,
                                            allDay: allDay
                                        },true);
  
                                    calendar.fullCalendar('unselect');
                                }
                            });
                        }
                    },
                    eventDrop: function (event, delta) {
                        var start = $.fullCalendar.formatDate(event.start, "Y-MM-DD");
                        var end = $.fullCalendar.formatDate(event.end, "Y-MM-DD");
  
                        $.ajax({
                            url: SITEURL + '/fullcalenderAjax',
                            data: {
                                title: event.title,
                                start: start,
                                end: end,
                                id: event.id,
                                type: 'update'
                            },
                            type: "POST",
                            success: function (response) {
                                displayMessage("Event Updated Successfully");
                            }
                        });
                    },
                    eventClick: function (event) {
                        var deleteMsg = confirm("Do you really want to delete?");
                        if (deleteMsg) {
                            $.ajax({
                                type: "POST",
                                url: SITEURL + '/fullcalenderAjax',
                                data: {
                                        id: event.id,
                                        type: 'delete'
                                },
                                success: function (response) {
                                    calendar.fullCalendar('removeEvents', event.id);
                                    displayMessage("Event Deleted Successfully");
                                }
                            });
                        }
                    }
 
                });
 
});
 
function displayMessage(message) {
    toastr.success(message, 'Event');
} 
  
</script>
                        @endsection


                        @section('javascript')

                        @endsection