<?php

namespace App\Models;

use EloquentFilter\Filterable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * @property string $name
 * @property Story[] $stories
 */
class StoryType extends Model
{
    use HasFactory,Filterable;
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'stories_types';

    /**
     * @var array
     */
    protected $fillable = ['name'];

    /**
     * timestamps
     *
     * @var bool
     */
    public $timestamps = false;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function stories()
    {
        return $this->hasMany('App\Models\Story', 'story_type_name', 'name');
    }
}