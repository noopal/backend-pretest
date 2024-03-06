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
        DB::table('jenis_kelamin')->insert([
            ['kode' => '1', 'jenis_kelamin' => 'Laki-laki'],
            ['kode' => '2', 'jenis_kelamin' => 'Perempuan'],
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('jenis_kelamin', function (Blueprint $table) {
            //
        });
    }
};
