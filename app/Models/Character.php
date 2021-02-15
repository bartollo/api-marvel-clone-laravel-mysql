<?php

namespace App\Models;

use EloquentFilter\Filterable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * @property integer $id
 * @property string $created_at
 * @property string $updated_at
 * @property string $name
 * @property string $description
 * @property string $thumbnail
 * @property ComicsCharacter[] $charactersComics
 * @property EventsCharacter[] $charactersEvents
 * @property SeriesCharacter[] $characterSeries
 * @property StoriesCharacter[] $charactersStories
 */
class Character extends Model
{
    use HasFactory,Filterable;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'characters';

    /**
     * The "type" of the auto-incrementing ID.
     *
     * @var string
     */
    protected $keyType = 'integer';

    /**
     * @var array
     */
    protected $fillable = ['created_at', 'updated_at', 'name', 'description', 'thumbnail'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function charactersComics()
    {
        return $this->hasMany('App\Models\CharacterComic');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function charactersEvents()
    {
        return $this->hasMany('App\Models\CharacterEvent');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function characterSeries()
    {
        return $this->hasMany('App\Models\CharacterSerie');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function charactersStories()
    {
        return $this->hasMany('App\Models\CharacterStory');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\belongsToMany
     */
    public function charactersUrls()
    {
        return $this->hasMany('App\Models\CharacterUrl');
    }

    /**
     * modelFilter
     *
     * @return void
     */
    public function modelFilter()
    {
        return $this->provideFilter(\App\Models\Filters\CharacterFilter::class);
    }

}