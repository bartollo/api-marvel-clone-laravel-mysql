<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\Character;
use App\Http\Resources\CharacterResource;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

/**
 * CharacterResourceTest
 *
 * Testa compatibilidade do retorno da api com o retorno do Resource
 *
 */
class CharacterResourceTest extends TestCase
{
    /**
     * testComparaRetornoDaApiComCharacterResource
     *
     * Compara retorno da api com character resource
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterResource(): void
    {

        $limit  = 1;
        $offset = 1;
        $order = 'id';

        $characters = Character::OrderBy($order,'ASC')->limit($limit)->offset($offset)->get();
        $resource = CharacterResource::collection($characters);
        $request = $this->json('GET','/api/characters/',['order' => $order,'limit' => $limit,'offset'=>$offset]);

        //Dados retornados pelo Request da API
        $data = json_decode($request->getContent(), true);

        //Dados Retornados pelo Resource
        $resourceData = $resource->response($request)->getData(true);

        $this->assertEquals($data['data']['results'], $resourceData["data"]);

    }

    /**
     * testComparaRetornoDaApiComCharacterResourceParaUriComId
     *
     * Compara retorno da api com character resource para uri com id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterResourceParaUriComId(): void
    {

        $character = Character::OrderBy('id','DESC')->first();
        $resource = new CharacterResource($character);

        $request = $this->json('GET','/api/characters/'.$character->id);

        //Dados retornados pelo Request da API
        $data = json_decode($request->getContent(), true);

        //Dados Retornados pelo Resource
        $resourceData = $resource->response($request)->getData(true);

        $this->assertEquals($data['data']['results'], $resourceData["data"]);

    }

    /**
     * testComparaRetornoDaApiComCharacterResourceParaUriComIdInexistente
     *
     * Compara retorno da api com character resource para uri com id inexistente
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterResourceParaUriComIdInexistente(): void
    {

        $characterId = Character::Orderby('id', 'desc')->first()->id;
        $idInexistente = $characterId+1;

        $response = $this->json('GET', '/api/characters/'.$idInexistente);

        $response->assertStatus(404)
            ->assertJson(['message' => "We don't recognize the parameter id"]);

    }
}