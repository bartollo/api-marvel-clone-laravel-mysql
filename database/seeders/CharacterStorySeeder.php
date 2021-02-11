<?php

namespace Database\Seeders;

use App\Models\CharacterStory;
use Illuminate\Database\Seeder;

class CharacterStorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CharacterStory::factory()->count(50)->create();
    }
}
