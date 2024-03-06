<?php

namespace App\Http\Controllers;

use App\Http\Request\BarangRequest;
use App\Models\Barang;
use Illuminate\Http\Request;

class BarangController extends Controller
{
    public function index()
    {
        $barang = Barang::with('kategori', 'satuan')->get();
        return response()->json($barang);
    }

    public function show($id)
    {
        $barang = Barang::findOrFail($id);
        return response()->json($barang);
    }

    public function store(BarangRequest $request)
    {
        $userId = mt_rand(1, 1000);
        $kode = $this->generateUniqueKodeBarang();

        $data = [
            'kd_kategori'    => $request->kd_kategori,
            'kd_satuan'      => $request->kd_satuan,
            'kode'           => $kode,
            'nama'           => $request->nama,
            'jumlah'         => $request->jumlah,
            'id_user_insert' => $userId
        ];


        $barang = Barang::create($data);

        return response()->json($barang, 201);
    }

    private function generateUniqueKodeBarang()
    {
        do {
            $kode = strtoupper(substr(md5(uniqid(rand(), true)), 0, 6));
        } while (Barang::where('kode', $kode)->exists());

        return $kode;
    }

    public function update(BarangRequest $request, $id)
    {
        $barang = Barang::findOrFail($id);

        $data = [
            'kd_kategori'    => $request->kd_kategori,
            'kd_satuan'      => $request->kd_satuan,
            'nama'           => $request->nama,
            'jumlah'         => $request->jumlah,
            'id_user_insert' => $request->id_user_insert
        ];

        if ($request->has('kode')) {
            $data['kode'] = $request->kode;
        }

        $barang->update($data);

        return response()->json($barang, 200);
    }

    public function delete($id)
    {
        $barang = Barang::findOrFail($id);
        $barang->delete();

        return response()->json(['message' => 'Barang Berhasil DiHapus'], 204);
    }
}
