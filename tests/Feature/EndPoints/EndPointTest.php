<?php

namespace Tests\Feature;

use Tests\TestCase;


use App\Models\Character;
use App\Models\CharacterComic;
use App\Models\CharacterEvent;
use App\Models\CharacterSerie;
use App\Models\CharacterStory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

/**
 * EndPointsTest
 */
class EndPointsTest extends TestCase
{

    /**
     * microtimeFloat
     *
     * @return void
     */
    public function microtimeFloat()
    {
        list($usec, $asec) = explode(" ", microtime());

        return ((float) $usec + (float) $asec);

    }

    /**
     * getTime
     *
     * @param  mixed $uri
     * @return void
     */
    public function getTime($uri)
    {
        $start = $this->microtimeFloat();
        fwrite(STDERR, print_r('Endpoint: ' . $uri . "\n", true));
        $end   = $this->microtimeFloat();
        $temps = round($end - $start, 3);

        fwrite(STDERR, print_r('time: ' . $temps . "\n", true));

        return $temps;
    }

    /**
     * testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersParaTodos
     *
     * verifica tempo de resposta de end characters para todos (sem Filtro)
     *
     * @return void
     */
    public function testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersParaTodos(){

        $uri= 'api/characters';

        $temps = $this->getTime($uri);
        $this->assertLessThan(15, $temps, "too long time for " . $uri);

        $response = $this->json('GET', $uri);
        $response->assertStatus(200);

    }

    /**
     * testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersParaId
     *
     * verifica tempo de resposta de end characters para id
     *
     * @return void
     */
    public function testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersParaId(){

        $characterId = Character::Orderby('id', 'desc')->first()->id;

        $uri= 'api/characters/'.$characterId;

        $temps = $this->getTime($uri);
        $this->assertLessThan(15, $temps, "too long time for " . $uri);

        $response = $this->json('GET', $uri);
        $response->assertStatus(200);

    }

    /**
     * testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersComics
     *
     * verifica tempo de resposta de end characters comics
     *
     * @return void
     */
    public function testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersComics(){

        $characterId = CharacterComic::Orderby('id', 'desc')->first()->character_id;

        $uri= 'api/characters/'.$characterId.'/comics';

        $temps = $this->getTime($uri);
        $this->assertLessThan(15, $temps, "too long time for " . $uri);

        $response = $this->json('GET', $uri);
        $response->assertStatus(200);

    }

    /**
     * testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersEvents
     *
     * verifica tempo de resposta de end characters events
     *
     * @return void
     */
    public function testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersEvents(){

        $characterId = CharacterEvent::Orderby('id', 'desc')->first()->character_id;

        $uri= 'api/characters/'.$characterId.'/events';

        $temps = $this->getTime($uri);
        $this->assertLessThan(15, $temps, "too long time for " . $uri);

        $response = $this->json('GET', $uri);
        $response->assertStatus(200);


    }

    /**
     * testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersSeries
     *
     * Verifica tempo de resposta de end characters series
     *
     * @return void
     */
    public function testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersSeries(){

        $characterId = CharacterSerie::Orderby('id', 'desc')->first()->character_id;

        $uri= 'api/characters/'.$characterId.'/series';

        $temps = $this->getTime($uri);
        $this->assertLessThan(15, $temps, "too long time for " . $uri);

        $response = $this->json('GET', $uri);
        $response->assertStatus(200);


    }

    /**
     * testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersStories
     *
     * verifica tempo de resposta de end characters stories
     *
     * @return void
     */
    public function testVerificaTempoDeRespostaDeEndPointMenor15MicrosegundosParaCharactersStories(){

        $characterId = CharacterStory::Orderby('id', 'desc')->first()->character_id;

        $uri= 'api/characters/'.$characterId.'/stories';

        $temps = $this->getTime($uri);
        $this->assertLessThan(15, $temps, "too long time for " . $uri);

        $response = $this->json('GET', $uri);
        $response->assertStatus(200);


    }


}