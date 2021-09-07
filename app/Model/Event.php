<?php

namespace App\Model;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $table= 'events';

    // protected $dates = ['date'];

    protected $fillable = [
        'title',
        'date',
        'starting_time',
        'end_time',
        'location',
    ];

    public function scopeUpcoming($query)
    {
        return $query->where('date', '>', Carbon::now() );
    }
}
