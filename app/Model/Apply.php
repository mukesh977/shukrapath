<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Apply extends Model
{
    protected $table = 'applies';

    protected $fillable = [
        'name',
        'gender',
        'phone',
        'temporary_address',
        'permanent_address',
        'date_of_birth',
        'email',
        'description',
        'document',
        'father_name',
        'mother_name',
        'grandfather_name',
        'grandmother_name',
        'spouse_name',
        'citizenship_permanent_address',
        'citizenship_zone_state',
        'citizenship_district',
        'citizenship_rm_mc_ward',
        'permanent_state',
        'permanent_district',
        'permanent_rm_mc_ward',
        'permanent_tole',
        'present_state',
        'present_district',
        'present_rm_mc_ward',
        'present_tole',
        'citizenship_no',
        'citizenship_issued_district',
        'passport_no',
        'nationality',
        'occupation',
        'contact_no_home',
        'contact_no_office',
        'mobile_no',
        'photo',
        'location_map',
        'signature',
        'document_photo',
        'branch',
    ];
}
