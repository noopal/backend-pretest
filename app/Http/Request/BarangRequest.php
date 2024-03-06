<?php

namespace App\Http\Request;

use Illuminate\Foundation\Http\FormRequest;

class BarangRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            'kd_kategori'    => ['required', 'integer', 'max:3'],
            'kd_satuan'      => ['required', 'string', 'max:10'],
            'kode'           => ['nullable', 'string', 'unique:barang', 'max:6'],
            'nama'           => ['required', 'string', 'max:20'],
            'jumlah'         => ['nullable', 'integer', 'min:0', 'max:100'],
            'id_user_insert' => ['required', 'integer'],
        ];
    }

    public function attributes()
    {
        return [
            'kd_kategori'    => 'Kode Kategori',
            'kd_satuan'      => 'Kode Satuan',
            'kode'           => 'Kode Barang',
            'nama'           => 'Nama Barang',
            'jumlah'         => 'Jumlah Barang',
            'id_user_insert' => 'ID User Insert',
        ];
    }
}
