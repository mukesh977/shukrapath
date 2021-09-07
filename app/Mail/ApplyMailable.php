<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Storage;


class ApplyMailable extends Mailable
{
    use Queueable, SerializesModels;
    public $data; 
    

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function build()
    {
        $data_array = $this->data;
        return $this->from('care@ultrabyteit.com')
        ->subject('online account registration')
        ->view('mail.apply')
        ->with('data', $data_array); 
    }
}