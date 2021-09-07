<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class LeaveMailable extends Mailable
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
        return $this->from($data_array['email'])
        ->subject('Customer Enquiry')
        ->view('mail.leaveMessage')
        ->with('data', $data_array); 
    }
}
