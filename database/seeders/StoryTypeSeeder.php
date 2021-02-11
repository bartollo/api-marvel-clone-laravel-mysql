<?php

namespace Database\Seeders;

use App\Models\StoryType;
use Illuminate\Database\Seeder;

class StoryTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        StoryType::factory()->count(2)->create();
    }
}