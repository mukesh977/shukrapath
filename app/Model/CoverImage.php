<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class CoverImage extends Model
{
    protected $table = 'cover_images';
    protected $fillable = [
        'contact_us_cover_image',
        'contact_us_seo_title',
        'contact_us_seo_keyword',
        'contact_us_seo_description',
        'news_cover_image',
        'news_seo_title',
        'news_seo_keyword',
        'news_seo_description',
        'gallery_cover_image',
        'team_cover_image',
        'service_cover_image'
    ];
}
