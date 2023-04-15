<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class customerMailContact extends Mailable
{
    use Queueable, SerializesModels;

    public $data;
    public function __construct($data)
    {
        $this->data = $data;
    }



    public function build()
    {
        $customerdata = $this->data;
        //return $this->view('view.name');
        //need to change from email address
        return $this->from('info@woodyengineering.com')->view('mail.customer-mail',compact('customerdata'))->subject('Email From Woody Engineering');
    }
}
