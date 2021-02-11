<?php

namespace Database\Factories;

use App\Models\Serie;
use App\Models\Character;
use App\Models\CharacterSerie;
use Illuminate\Database\Eloquent\Factories\Factory;

class CharacterSerieFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CharacterSerie::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'serie_id' => Serie::inRandomOrder()->first()->id,
            'character_id' => Character::inRandomOrder()->first()->id
        ];
    }
}
