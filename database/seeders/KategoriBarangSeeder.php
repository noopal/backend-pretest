<?php

namespace Database\Seeders;

use App\Models\KategoriBarang;
use Illuminate\Database\Seeder;

class KategoriBarangSeeder extends Seeder
{
    public function run()
    {
        KategoriBarang::create(['kode' => 'elk', 'nama_kategori' => 'Elektronik']);
        KategoriBarang::create(['kode' => 'pkn', 'nama_kategori' => 'Pakaian']);
        KategoriBarang::create(['kode' => 'mkn', 'nama_kategori' => 'Makanan']);
    }
}
