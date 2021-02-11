<?php

namespace Database\Seeders;

use App\Models\CharacterSerie;
use Illuminate\Database\Seeder;

class CharacterSerieSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CharacterSerie::factory()->count(50)->create();
    }
}
