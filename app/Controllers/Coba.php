<?php

namespace App\Controllers;

class Coba extends BaseController
{
    public function index($nama)
    {
        echo "aku ingin makan dengan $nama.";
    }
    public function hantu()
    {
        echo "aku ingin main dengan $this->nama.";
    }
}
