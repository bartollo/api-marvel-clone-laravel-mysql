<?php

namespace Database\Seeders;

use App\Models\CharacterEvent;
use Illuminate\Database\Seeder;

class CharacterEventSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CharacterEvent::factory()->count(50)->create();
    }
}