<?php

namespace Tests\Feature;

use Tests\TestCase;


use App\Models\Character;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

/**
 * EndPointsTest
 */
class EndPointsTest extends TestCase
{
    /**
     * testEndPointsResponseTime
     *
     * Verifica tempo de resposta de end points
     *
     * @return void
     */
    public function testVerificaTempoDeRespostaDeEndPoints()
    {
        $routeCollection = Route::getRoutes();
        $this->withoutEvents();
        $blacklist = [
            'api/{fallbackPlaceholder}',
        ];

        $characterId = Character::Orderby('id', 'desc')->first()->id;

        foreach ($routeCollection as $route) {

            $uri = str_replace('{character}', $characterId, $route->uri);

            if (in_array('GET', $route->methods) &&
                !in_array($route->uri, $blacklist)
            ) {
                $start = $this->microtimeFloat();
                fwrite(STDERR, print_r('Endpoint: ' . $uri . "\n", true));

                $response = $this->json('GET', $uri);
                $end   = $this->microtimeFloat();
                $temps = round($end - $start, 3);

                fwrite(STDERR, print_r('time: ' . $temps . "\n", true));

                $this->assertLessThan(15, $temps, "too long time for " . $uri);
                $response->assertStatus(200);

            }

        }
    }

    public function microtimeFloat()
    {
        list($usec, $asec) = explode(" ", microtime());

        return ((float) $usec + (float) $asec);

    }
}