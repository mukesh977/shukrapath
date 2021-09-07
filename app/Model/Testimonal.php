<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Testimonal extends Model
{
    protected $table = 'testimonals';
    protected $fillable = [
        'author',
        'designation',
        'description',
        'order',
        'image',
        'messege_from_chariman'
    ];

    public function scopeChairman_message($query)
    {
        return $query->firstOrFail();
    }

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
    public function scopeMsg($query)
    {
        return $query->where('messege_from_chariman', '1');
    }
    public function scopeTest($query)
    {
        return $query->where('messege_from_chariman', '0');
    }
}
