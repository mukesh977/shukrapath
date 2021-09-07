<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    protected $table = 'teams';
    protected $fillable = [
            'full_name',
            'designation',
            'image',
            'order',
            'department_id',
            'link_to_facebook',
            'link_to_twitter',
            'link_to_instagram',
            'link_to_linkedIn',
        ];

    public function department()
    {
        return $this->belongsTo(Department::class);
    }

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
