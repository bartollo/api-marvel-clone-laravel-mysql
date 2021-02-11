<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\Character;
use Illuminate\Support\Facades\URL;
use Illuminate\Foundation\Testing\WithFaker;
use App\Http\Resources\CharacterStoryResource;
use Illuminate\Foundation\Testing\RefreshDatabase;

/**
 * CharacterStoryResourceTest
 *
 * Testa compatibilidade do retorno da api com o retorno do Resource
 *
 */
class CharacterStoryResourceTest extends TestCase
{


    /**
     * testComparaRetornoDaApiComRetornoDaRotaDeStoriesParaUriSemId
     *
     * Compara retorno da api com retorno da rota de stories para uri sem id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComRetornoDaRotaDeStoriesParaUriSemId(): void
    {
        $url= URL::to('/api/characters//stories');
        $response = $this->json('GET','/api/characters//stories');

        $response->assertStatus(404)
            ->assertJson(['message' => $url." does not exist"]);
    }


    /**
     * testComparaRetornoDaApiComCharacterStoryResourceParaUriComId
     *
     * Compara retorno da api com character story resource para uri com id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterStoryResourceParaUriComId(): void
    {
        $offset = 1;
        $limit = 20;
        $orderBy = 'id';

        $character = Character::with(['charactersStories' => function ($query) use ($orderBy ,$limit ,$offset){
            $query->offset($offset)->limit($limit)->orderBy($orderBy, 'ASC');
        },'charactersStories.story'])->inRandomOrder()->first();

        $resource = CharacterStoryResource::collection($character->charactersStories);;

        $request = $this->json('GET','/api/characters/'.$character->id.'/stories',['limit'=>$limit, 'offset'=>$offset, 'order'=>$orderBy]);

        //Dados retornados pelo Request da API
        $data = json_decode($request->getContent(), true);

        //Dados Retornados pelo Resource
        $resourceData = $resource->response($request)->getData(true);

        $this->assertEquals($data['data']['results'], $resourceData["data"]);

    }

    /**
     * testComparaRetornoDaApiComCharacterStoryResourceParaUriComIdInexistente
     *
     * Compara retorno da api com character story resource para uri com id inexistente
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterStoryResourceParaUriComIdInexistente(): void
    {

        $characterId = \App\Models\Character::Orderby('id', 'desc')->first()->id;
        $idInexistente = $characterId+1;

        $response = $this->json('GET', '/api/characters/'.$idInexistente.'/stories');

        $response->assertStatus(404)
            ->assertJson(['message' => "We don't recognize the parameter id"]);

    }
}