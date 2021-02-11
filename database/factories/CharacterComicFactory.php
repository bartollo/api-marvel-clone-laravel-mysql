<?php

namespace Database\Factories;

use App\Models\Comic;
use App\Models\Character;
use App\Models\CharacterComic;
use Illuminate\Database\Eloquent\Factories\Factory;

class CharacterComicFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CharacterComic::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'comic_id' => Comic::inRandomOrder()->first()->id,
            'character_id' => Character::inRandomOrder()->first()->id
        ];
    }
}
