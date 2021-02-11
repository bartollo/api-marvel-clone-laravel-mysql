<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\ComicSeeder;
use Database\Seeders\SerieSeeder;
use Database\Seeders\StorySeeder;
use Database\Seeders\CharacterSeeder;
use Database\Seeders\StoryTypeSeeder;
use Database\Seeders\CharacterUrlSeeder;
use Database\Seeders\CharacterEventSeeder;
use Database\Seeders\CharacterSerieSeeder;
use Database\Seeders\CharacterStorySeeder;
use Database\Seeders\CharacterUrlTypeSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        $this->call([

            //Types Tables
            StoryTypeSeeder::class,
            CharacterUrlTypeSeeder::class,

            //Principal Tables
            CharacterSeeder::class,
            ComicSeeder::class,
            EventSeeder::class,
            SerieSeeder::class,
            StorySeeder::class,

            //Secondary Tables
            CharacterUrlSeeder::class,

            //Relationship Tables
            CharacterEventSeeder::class,
            CharacterSerieSeeder::class,
            CharacterStorySeeder::class,
            CharacterComicSeeder::class,

        ]);

    }
}