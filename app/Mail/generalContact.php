<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class generalContact extends Mailable
{
    use Queueable, SerializesModels;

    public $data;
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $customerdata = $this->data;
        //from website to woody email 
        return $this->from('info@woodyengineering.com')->view('mail.contact-mail',compact('customerdata'))->subject('Email From Woody Engineering, WAE');
    }
}
