<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    protected $table = 'branches';

    protected $fillable = [
        'title',
        'email',
        'address',
        'phone_no',
        'order'
    ];

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
