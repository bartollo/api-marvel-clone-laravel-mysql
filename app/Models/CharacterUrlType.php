<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * @property string $name
 * @property CharactersUrl[] $charactersUrls
 */
class CharacterUrlType extends Model
{
    use HasFactory;
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'characters_urls_types';

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
    public function charactersUrls()
    {
        return $this->hasMany('App\Models\CharactersUrl', 'character_url_type_name', 'name');
    }
}