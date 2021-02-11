<?php

namespace Database\Seeders;

use App\Models\CharacterComic;
use Illuminate\Database\Seeder;

class CharacterComicSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CharacterComic::factory()->count(50)->create();
    }
}
