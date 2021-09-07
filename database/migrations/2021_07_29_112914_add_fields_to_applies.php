<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToApplies extends Migration
{
    public function up()
    {
        Schema::table('applies', function (Blueprint $table) {
            $table->string('father_name')->nullable();
            $table->string('mother_name')->nullable();
            $table->string('grandfather_name')->nullable();
            $table->string('grandmother_name')->nullable();
            $table->string('spouse_name')->nullable();
            $table->string('citizenship_permanent_address')->nullable();
            $table->string('citizenship_zone_state')->nullable();
            $table->string('citizenship_district')->nullable();
            $table->string('citizenship_rm_mc_ward')->nullable();
            $table->string('permanent_state')->nullable();
            $table->string('permanent_district')->nullable();
            $table->string('permanent_rm_mc_ward')->nullable();
            $table->string('permanent_tole')->nullable();
            $table->string('present_state')->nullable();
            $table->string('present_district')->nullable();
            $table->string('present_rm_mc_ward')->nullable();
            $table->string('present_tole')->nullable();
            $table->bigInteger('citizenship_no')->nullable();
            $table->string('citizenship_issued_district')->nullable();
            $table->bigInteger('passport_no')->nullable();
            $table->string('nationality')->nullable();
            $table->string('occupation')->nullable();
            $table->bigInteger('contact_no_home')->nullable();
            $table->bigInteger('contact_no_office')->nullable();
            $table->bigInteger('mobile_no')->nullable();
            $table->string('photo')->nullable();
            $table->string('location_map')->nullable();
            $table->string('signature')->nullable();
            $table->string('document_photo')->nullable();
        });
    }

    public function down()
    {
        Schema::table('applies', function (Blueprint $table) {
            $table->dropColumn('father_name');
            $table->dropColumn('mother_name');
            $table->dropColumn('grandfather_name');
            $table->dropColumn('grandmother_name');
            $table->dropColumn('spouse_name');
            $table->dropColumn('citizenship_permanent_address');
            $table->dropColumn('citizenship_zone_state');
            $table->dropColumn('citizenship_district');
            $table->dropColumn('citizenship_rm_mc_ward');
            $table->dropColumn('permanent_state');
            $table->dropColumn('permanent_district');
            $table->dropColumn('permanent_rm_mc_ward');
            $table->dropColumn('permanent_tole');
            $table->dropColumn('present_state');
            $table->dropColumn('present_district');
            $table->dropColumn('present_rm_mc_ward');
            $table->dropColumn('present_tole');
            $table->dropColumn('citizenship_no');
            $table->dropColumn('citizenship_issued_district');
            $table->dropColumn('passport_no');
            $table->dropColumn('nationality');
            $table->dropColumn('occupation');
            $table->dropColumn('contact_no_home');
            $table->dropColumn('contact_no_office');
            $table->dropColumn('mobile_no');
            $table->dropColumn('photo');
            $table->dropColumn('location_map');
            $table->dropColumn('signature');
            $table->dropColumn('document_photo');
        });
    }
}
