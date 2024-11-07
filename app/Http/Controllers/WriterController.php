<?php

namespace App\Http\Controllers;

use App\Models\Writer;
use Illuminate\Http\Request;

class WriterController extends Controller
{
    //
    public function view(){
        $writers = Writer::all();
        return view('/writer/home', ['writerList' => $writers]);
    }
    
}
