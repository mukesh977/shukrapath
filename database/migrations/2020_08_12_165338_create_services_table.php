<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('slug');
            $table->longText('first_description')->nullable();
            $table->longText('second_description')->nullable();
            $table->longText('third_description')->nullable();
            $table->string('cover_image')->nullable();
            $table->string('featured_image')->nullable();
            $table->unsignedBigInteger('service_categories_id');
            $table->foreign('service_categories_id')
            ->references('id')
            ->on('service_categories')
            ->onDelete('cascade')
            ->onUpdate('cascade');
            $table->integer('order');

            $table->string('seo_title')->nullable();
            $table->longtext('seo_description')->nullable();
            $table->string('seo_keyword')->nullable();
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('services');
    }
}
