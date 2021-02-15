<?php

namespace App\Models;

use EloquentFilter\Filterable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * @property integer $id
 * @property string $character_url_type_name
 * @property string $url
 * @property string $created_at
 * @property string $updated_at
 * @property CharactersUrlsType $charactersUrlsType
 */
class CharacterUrl extends Model
{
    use HasFactory,Filterable;
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'characters_urls';

    /**
     * The "type" of the auto-incrementing ID.
     *
     * @var string
     */
    protected $keyType = 'integer';

    /**
     * @var array
     */
    protected $fillable = ['character_url_type_name', 'url', 'character_id', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function charactersUrlsType()
    {
        return $this->belongsTo('App\Models\CharactersUrlsType', 'character_url_type_name', 'name');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function characters()
    {
        return $this->hasMany('App\Models\Character');
    }
}