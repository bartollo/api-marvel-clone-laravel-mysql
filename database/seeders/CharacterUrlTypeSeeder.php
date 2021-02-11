<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\CharacterUrlType;

class CharacterUrlTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CharacterUrlType::factory()->count(3)->create();
    }
}