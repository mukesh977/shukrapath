<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use App\Model\Gallery;

class GalleryCategory extends Model
{
    protected $table = 'gallery_categories';
    protected $fillable = ['category_name', 'thumbnail_image', 'order'];

    public function gallery()
    {
        return $this->hasMany(Gallery::class, 'gallery_categories_id');
    }

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
