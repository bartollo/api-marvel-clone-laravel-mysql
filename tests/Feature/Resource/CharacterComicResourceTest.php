<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Enums\QueryEnum;
use App\Models\Character;
use App\Models\CharacterComic;
use Illuminate\Support\Facades\URL;
use App\Http\Resources\CharacterResource;
use Illuminate\Foundation\Testing\WithFaker;
use App\Http\Resources\CharacterComicResource;
use Illuminate\Foundation\Testing\RefreshDatabase;

/**
 * CharacterComicResourceTest
 *
 * Testa compatibilidade do retorno da api com o retorno do Resource
 */
class CharacterComicResourceTest extends TestCase
{

    /**
     * testComparaRetornoDaApiComRetornoDaRotaDeComicsParaUriSemId
     *
     * Compara retorno da api com retorno da rota de comics para uri sem id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComRetornoDaRotaDeComicsParaUriSemId(): void
    {
        $url= URL::to('/api/characters//comics');
        $response = $this->json('GET','/api/characters//comics');

        $response->assertStatus(404)
            ->assertJson(['message' => $url." does not exist"]);
    }

    /**
     * testComparaRetornoDaApiComCharacterComicResourceParaUriComId
     *
     * Compara retorno da api com character comic resource para uri com id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterComicResourceParaUriComId(): void
    {

        $offset = QueryEnum::DEFAULT_OFFSET;
        $limit = QueryEnum::DEFAULT_LIMIT;
        $orderBy = QueryEnum::DEFAULT_ORDER_FIELD;

        $character = Character::with(['charactersComics' => function ($query) use ($orderBy ,$limit ,$offset){
            $query->offset($offset)->limit($limit)->orderBy($orderBy, 'ASC');
        },'charactersComics.comic'])->whereHas('charactersComics.comic')->inRandomOrder()->first();

        $resource = CharacterComicResource::collection($character->charactersComics);

        $request = $this->json('GET','/api/characters/'.$character->id.'/comics',['limit'=>$limit, 'offset'=>$offset, 'order'=>$orderBy]);

        //Dados retornados pelo Request da API
        $data = json_decode($request->getContent(), true);

        //Dados Retornados pelo Resource
        $resourceData = $resource->resolve();


        $this->assertEquals($data['data']['results'], $resourceData);

    }

    /**
     * testComparaRetornoDaApiComCharacterComicResourceParaUriComIdInexistente
     *
     * Compara retorno da api com character comic resource para uri com id inexistente
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterComicResourceParaUriComIdInexistente(): void
    {

        $characterId = Character::Orderby('id', 'desc')->first()->id;
        $idInexistente = $characterId+1;

        $response = $this->json('GET', '/api/characters/'.$idInexistente.'/comics');

        $response->assertStatus(404)
            ->assertJson(['message' => "No records found."]);

    }
}