<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('profesi', function (Blueprint $table) {
            $table->id();
            $table->string('kode');
            $table->string('nama_profesi');
            $table->timestamps();
        });

        DB::table('profesi')->insert([
            ['kode' => 'A', 'nama_profesi' => 'Petani'],
            ['kode' => 'B', 'nama_profesi' => 'Teknisi'],
            ['kode' => 'C', 'nama_profesi' => 'Guru'],
            ['kode' => 'D', 'nama_profesi' => 'Nelayan'],
            ['kode' => 'E', 'nama_profesi' => 'Seniman'],
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profesi');
    }
};
