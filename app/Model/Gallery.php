<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use App\Model\GalleryCategory;
 
class Gallery extends Model
{
    protected $table = 'galleries';
    protected $fillable  = ['image', 'gallery_categories_id'];

    public function gallery_category()
    {
        return $this->belongsTo(GalleryCategory::class, 'gallery_categories_id');
    }
}
