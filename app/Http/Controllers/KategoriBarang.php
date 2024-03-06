<?php

namespace App\Http\Controllers;

use App\Models\KategoriBarang as ModelsKategoriBarang;
use Illuminate\Http\Request;

class KategoriBarang extends Controller
{
    public function index()
    {
        $data = ModelsKategoriBarang::all();
        return response()->json($data);
    }
}
