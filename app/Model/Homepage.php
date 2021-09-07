<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Homepage extends Model
{
    protected $table = 'homepages';
    protected $fillable = [
        'title',
        'description',
        'cover_image',
        'button_link',
        'button_name',
        'banner_image',
        'banner_description',
        'banner_button_link',
        'banner_button_name',
        'footer_description',
        'seo_title',
        'seo_description',
        'seo_keyword'
    ];
}
