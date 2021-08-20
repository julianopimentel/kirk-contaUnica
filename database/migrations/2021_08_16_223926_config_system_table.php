<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Config;


class ConfigSystemTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(config::get('database.connections.tenant.schema').'.config_system', function(Blueprint $table)
		{
			$table->bigInteger('id', true);
			$table->string('logo');
			$table->string('favicon');
			$table->string('name');
			$table->string('timezone');
			$table->boolean('default_language')->nullable();
			$table->string('currency')->nullable()->default(1);
			$table->timestamps(10);
		});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('config_system');
    }
}
