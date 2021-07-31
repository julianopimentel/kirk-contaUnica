@extends('dashboard.base')

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

@section('content')

<div class="container-fluid">
  <div class="fade-in">
    <div class="row">
      <div class="col-md-12">
        <div class="card">

          <div class="card-body">

          <div class="section-body">
            <h2 class="section-title">Settings</h2>
            <p class="section-lead">
              Organize and adjust all settings about this site.
            </p>

            <div class="row">
              <div class="col-lg-6">
                <div class="card card-large-icons">
                  <div class="card-icon bg-primary text-white">
                    <i class="fas fa-cog"></i>
                  </div>
                  <div class="card-body">
                    <h4>General</h4>
                    <p>General settings such as, site title, site description, address and so on.</p>
                    <a href="{{ route('indexSystem') }}" class="card-cta">Change Setting <i class="fas fa-chevron-right"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card card-large-icons">
                  <div class="card-icon bg-primary text-white">
                    <i class="fas fa-search"></i>
                  </div>
                  <div class="card-body">
                    <h4>SEO</h4>
                    <p>Search engine optimization settings, such as meta tags and social media.</p>
                    <a href="features-setting-detail.html" class="card-cta">Change Setting <i class="fas fa-chevron-right"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card card-large-icons">
                  <div class="card-icon bg-primary text-white">
                    <i class="fas fa-envelope"></i>
                  </div>
                  <div class="card-body">
                    <h4>Email</h4>
                    <p>Email SMTP settings, notifications and others related to email.</p>
                    <a href="{{ url('settings/mail') }}" class="card-cta">Change Setting <i class="fas fa-chevron-right"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card card-large-icons">
                  <div class="card-icon bg-primary text-white">
                    <i class="fas fa-power-off"></i>
                  </div>
                  <div class="card-body">
                    <h4>System</h4>
                    <p>PHP version settings, time zones and other environments.</p>
                    <a href="features-setting-detail.html" class="card-cta">Change Setting <i class="fas fa-chevron-right"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card card-large-icons">
                  <div class="card-icon bg-primary text-white">
                    <i class="fas fa-chart-line"></i>
                  </div>
                  <div class="card-body">
                    <h4>Meta</h4>
                    <p>inserir melhor detalhes</p>
                    <a href="{{ route('indexMeta') }}" class="card-cta">Change Setting <i class="fas fa-chevron-right"></i></a>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card card-large-icons">
                  <div class="card-icon bg-primary text-white">
                    <i class="fas fa-stopwatch"></i>
                  </div>
                  <div class="card-body">
                    <h4>Automation</h4>
                    <p>Settings about automation such as cron job, backup automation and so on.</p>
                    <a href="features-setting-detail.html" class="card-cta text-primary">Change Setting <i class="fas fa-chevron-right"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      <!-- /.col-->
    </div>
    <!-- /.row-->
  </div>
</div>

@endsection

@section('javascript')

@endsection