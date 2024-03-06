<?php

namespace Database\Seeders;

use App\Models\SatuanBarang;
use Illuminate\Database\Seeder;

class SatuanBarangSeeder extends Seeder
{
    public function run()
    {
        SatuanBarang::create(['kode' => 'unt', 'nama_satuan' => 'Unit']);
        SatuanBarang::create(['kode' => 'kg', 'nama_satuan' => 'Kilogram']);
        SatuanBarang::create(['kode' => 'l', 'nama_satuan' => 'Liter']);
    }
}
