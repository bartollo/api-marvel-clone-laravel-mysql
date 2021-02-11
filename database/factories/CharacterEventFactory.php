<?php

namespace Database\Factories;

use App\Models\Event;
use App\Models\Character;
use App\Models\CharacterEvent;
use Illuminate\Database\Eloquent\Factories\Factory;

class CharacterEventFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CharacterEvent::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'event_id' => Event::inRandomOrder()->first()->id,
            'character_id' => Character::inRandomOrder()->first()->id
        ];
    }
}
