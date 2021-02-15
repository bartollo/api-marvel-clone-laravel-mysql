<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\Character;
use Illuminate\Support\Facades\URL;
use App\Http\Resources\CharacterUrlResource;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

/**
 * CharacterUrlResourceTest
 *
 * Testa compatibilidade do retorno da api com o retorno do Resource
 *
 */
class CharacterUrlResourceTest extends TestCase
{


    /**
     * testComparaRetornoDaApiComRetornoDaRotaDeUrlParaUriSemId
     *
     * Compara retorno da api com retorno da rota de url para uri sem id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComRetornoDaRotaDeUrlParaUriSemId(): void
    {
        $url= URL::to('/api/characters//stories');
        $response = $this->json('GET','/api/characters//stories');

        $response->assertStatus(404)
            ->assertJson(['message' => $url." does not exist"]);
    }

    /**
     * testComparaRetornoDaApiComCharacterUrlResourceParaUriComId
     *
     * Compara retorno da api com character resource para uri com id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterResourceParaUriComId(): void
    {
        $character = Character::with('charactersUrls')->inRandomOrder()->first();
        $resource = CharacterUrlResource::collection($character->charactersUrls);

        $request = $this->json('GET','/api/characters/'.$character->id);

        //Dados retornados pelo Request da API
        $data = json_decode($request->getContent(), true);

        //Dados Retornados pelo Resource
        $resourceData = $resource->resolve();

        $this->assertEquals($data['data']["results"]['urls'], $resourceData);

    }

}