<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Feature extends Model
{
    protected $table = 'features';

    protected $fillable = [
        'title',
        'slug',
        'description',
        'subtitle',
        'second_description',
        'order',
        'cover_image',
        'featured_image',
        'seo_title',
        'seo_description',
        'seo_keyword'
    ];

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
