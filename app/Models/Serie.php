<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * @property integer $id
 * @property string $created_at
 * @property string $updated_at
 * @property string $uri
 * @property string $name
 * @property SeriesCharacter[] $characterSeries
 */
class Serie extends Model
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
    protected $fillable = ['created_at', 'updated_at', 'uri', 'name'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function characterSeries()
    {
        return $this->hasMany('App\Models\SeriesCharacter', 'serie_id');
    }
}
