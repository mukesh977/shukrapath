<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    protected $table = 'faqs';

    protected $fillable = [
        'question',
        'answer',
        'order'
    ];

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
