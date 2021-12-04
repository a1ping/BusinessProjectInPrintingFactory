<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function __construct()
	{

	}
    public function index()
    {
		 $this->load->library('aws_sdk');

        return view('welcome_message');
    }
}
