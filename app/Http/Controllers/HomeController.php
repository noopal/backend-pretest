<?php

namespace App\Http\Controllers;

use App\Models\HasilResponse;
use App\RandomUser;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $data = HasilResponse::with('jenisKelamin', 'tableProfesi')->get();

        return response()->json($data);
    }
    public function process()
    {
        // Get API dari class RandomUser
        $response = RandomUser::getData();

        $this->store($response);

        return response()->json(['message' => 'Data Berhasil Di Simpan']);
    }

    public function store($response)
    {
        $jenis_kelamin = $response['results'][0]['gender'] === 'female' ? 2 : 1;
        $nama          = $response['results'][0]['name']['first'] . ' ' . $response['results'][0]['name']['last'];
        $nama_jalan    = $response['results'][0]['location']['street']['name'];
        $email         = $response['results'][0]['email'];
        $plain_json    = json_encode($response);

        $md5          = md5(json_encode($response));
        $angka_kurang = preg_match_all('/[0-6]/', $md5, $matches);
        $angka_lebih  = strlen($md5) - $angka_kurang;

        HasilResponse::create([
            "jenis_kelamin" => $jenis_kelamin,
            "nama"          => $nama,
            "nama_jalan"    => $nama_jalan,
            "email"         => $email,
            "angka_kurang"  => $angka_kurang,
            "angka_lebih"   => $angka_lebih,
            "profesi"       => chr(rand(65, 69)),
            "plain_json"    => $plain_json
        ]);
    }
}
