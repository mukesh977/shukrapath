<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoverImagesTable extends Migration
{
    
    public function up()
    {
        Schema::create('cover_images', function (Blueprint $table) {
            $table->id();
            $table->string('contact_us_cover_image')->nullable();
            $table->string('contact_us_seo_title')->nullable();
            $table->longText('contact_us_seo_keyword')->nullable();
            $table->longText('contact_us_seo_description')->nullable();
            
            $table->string('news_cover_image')->nullable();
            $table->string('news_seo_title')->nullable();
            $table->longText('news_seo_keyword')->nullable();
            $table->longText('news_seo_description')->nullable();

            $table->string('gallery_cover_image')->nullable();
            $table->string('team_cover_image')->nullable();
            $table->string('service_cover_image')->nullable();
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
        Schema::dropIfExists('cover_images');
    }
}
