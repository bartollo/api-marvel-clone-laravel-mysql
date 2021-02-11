<?php

namespace Database\Factories;

use App\Models\Character;
use App\Models\CharacterUrl;
use App\Models\CharacterUrlType;
use Illuminate\Database\Eloquent\Factories\Factory;

class CharacterUrlFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CharacterUrl::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'url' => $this->faker->url(),
            'character_url_type_name' => CharacterUrlType::inRandomOrder()->first()->name,
            'character_id' => Character::inRandomOrder()->first()->id
        ];
    }
}