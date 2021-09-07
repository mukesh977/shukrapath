<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Affiliation extends Model
{
    protected $table = 'partners';
    protected $fillable = ['title', 'description', 'order', 'image'];

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
