<?php

namespace Database\Factories;

use App\Models\Story;
use App\Models\StoryType;
use Illuminate\Database\Eloquent\Factories\Factory;

class StoryFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Story::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->text(13),
            'story_type_name' => StoryType::inRandomOrder()->first()->name,
            'uri' => $this->faker->word(200)
        ];
    }
}