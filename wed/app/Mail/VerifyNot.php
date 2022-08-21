<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class VerifyNot extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $token,$name,$contact_email,$sitelink,$address;
    public function __construct($sitelink,$name,$token,$contact_email,$address)
    {
        //
        $this->token=$token;
        $this->sitelink=$sitelink;
        $this->name=$name;
        $this->contact_email=$contact_email;
        $this->address=$address;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.token')->with([

            'token'=>$this->token,
            'sitelink'=>$this->sitelink,
            'name'=>$this->name,
            'contact_email'=>$this->contact_email,
            'address'=>$this->address
        ]);
    }
}
