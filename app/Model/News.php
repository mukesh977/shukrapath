<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = 'news';
    protected $fillable  = [
        'news_title', 
        'news_url', 
        'first_paragraph', 
        'second_paragraph',
        'highlighted_news',
        'cover_image', 
        'featured_image', 
        'seo_title', 
        'seo_description', 
        'seo_keyword'
    ];
}
