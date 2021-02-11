<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * @property integer $id
 * @property string $story_type_name
 * @property string $created_at
 * @property string $updated_at
 * @property string $name
 * @property string $uri
 * @property storyType $StoryType
 * @property CharacterStory[] $CharacterStory
 */
class Story extends Model
{
    use HasFactory;
    /**
     * The "type" of the auto-incrementing ID.
     *
     * @var string
     */
    protected $keyType = 'integer';

    /**
     * @var array
     */
    protected $fillable = ['story_type_name', 'created_at', 'updated_at', 'name', 'uri'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function storyType()
    {
        return $this->belongsTo('App\Models\StoryType', 'story_type_name', 'name');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function CharacterStorys()
    {
        return $this->hasMany('App\Models\CharacterStory', 'storie_id');
    }
}
