<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $table = 'services';
    protected $fillable = [
        'title',
        'slug',
        'first_description',
        'second_description',
        'third_description',
        'cover_image',
        'featured_image',
        'service_categories_id',
        'seo_title',
        'seo_description',
        'seo_keyword',
        'order'
    ];

    public function service_category()
    {
        return $this->belongsTo('App\Model\ServiceCategory', 'service_categories_id');
    }
}
