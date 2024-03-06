<?php

namespace App\Http\Controllers;

use App\Models\SatuanBarang as ModelsSatuanBarang;
use Illuminate\Http\Request;

class SatuanBarang extends Controller
{
    public function index()
    {
        $data = ModelsSatuanBarang::all();
        return response()->json($data);
    }
}
