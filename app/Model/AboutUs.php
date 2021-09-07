<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AboutUs extends Model
{
    protected $table = 'about_us';
    protected $fillable = [
        'title',
        'description',
        'cover_image',
        'first_featured_image',
        'second_featured_image',
        'image_text',
        'first_feature', 
        'first_description', 
        'first_feature_image', 
        'second_feature', 
        'second_description', 
        'second_feature_image', 
        'third_feature', 
        'third_description', 
        'third_feature_image',
        'forth_feature', 
        'forth_description', 
        'forth_feature_image',
        'our_mission',
        'mission_image',
        'our_vision',
        'vision_image',
        'years_of_experience',
        'happy_client',
        'no_of_branch', 
        'total_share', 
        'seo_title', 
        'seo_description', 
        'seo_keyword'
    ];
}
