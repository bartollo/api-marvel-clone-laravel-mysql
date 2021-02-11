<?php

namespace Database\Factories;

use App\Models\Story;
use App\Models\Character;
use App\Models\CharacterStory;
use Illuminate\Database\Eloquent\Factories\Factory;

class CharacterStoryFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CharacterStory::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'story_id' => Story::inRandomOrder()->first()->id,
            'character_id' => Character::inRandomOrder()->first()->id
        ];
    }
}
