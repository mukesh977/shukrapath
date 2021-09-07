<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ServiceCategory extends Model
{
    protected $table = 'service_categories';
    protected $fillable = [
        'name',
        'slug',
        'order',
    ];

    public function service()
    {
        return $this->hasMany('App\Model\Service', 'service_categories_id');
    }
    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
