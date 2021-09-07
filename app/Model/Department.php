<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use App\Model\Team;

class Department extends Model
{
    protected $table = 'departments';
    protected $fillable = ['department_name', 'order'];

    public function team()
    {
        return $this->hasMany(Team::class);
    }

    public function scopeAsc($query)
    {
        return $query->orderBy('order', 'asc');
    }
}
