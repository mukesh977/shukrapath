<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAboutUsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('about_us', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->longText('description')->nullable();
            $table->string('cover_image')->nullable();
            $table->string('first_featured_image')->nullable();
            $table->string('second_featured_image')->nullable();
            $table->string('image_text')->nullable();
            

            $table->string('first_feature')->nullable();
            $table->longText('first_description')->nullable();                        
            $table->longText('first_feature_image')->nullable(); 

            $table->string('second_feature')->nullable();
            $table->longText('second_description')->nullable();                        
            $table->longText('second_feature_image')->nullable();

            $table->string('third_feature')->nullable();
            $table->longText('third_description')->nullable();                        
            $table->longText('third_feature_image')->nullable(); 
            
            $table->string('our_mission')->nullable();
            $table->longText('mission_image')->nullable();                        
            
            $table->string('our_vision')->nullable();
            $table->longText('vision_image')->nullable();                        


            $table->string('seo_title')->nullable();
            $table->string('seo_description')->nullable();
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
        Schema::dropIfExists('about_us');
    }
}
