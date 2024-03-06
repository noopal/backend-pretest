<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    use HasFactory;
    protected $table = 'barang';
    protected $fillable = [
        'kd_kategori',
        'kd_satuan',
        'kode',
        'nama',
        'jumlah',
        'id_user_insert',
    ];

    public function kategori()
    {
        return $this->belongsTo(KategoriBarang::class, 'kd_kategori', 'id');
    }

    public function satuan()
    {
        return $this->belongsTo(SatuanBarang::class, 'kd_satuan', 'kode');
    }
}
