<?php

namespace Database\Seeders;

use App\Models\CharacterUrl;
use Illuminate\Database\Seeder;

class CharacterUrlSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CharacterUrl::factory()->count(100)->create();
    }
}