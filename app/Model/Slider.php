<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $table = 'sliders';
    protected $fillable = [
            'title',
            'description',
            'image',
            'order',
            'button_caption',
            'button_link',
        ];

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
