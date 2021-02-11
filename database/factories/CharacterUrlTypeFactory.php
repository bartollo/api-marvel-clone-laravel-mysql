<?php

namespace Database\Factories;

use App\Models\CharacterUrlType;
use Illuminate\Database\Eloquent\Factories\Factory;

class CharacterUrlTypeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CharacterUrlType::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->word(15),
        ];
    }
}