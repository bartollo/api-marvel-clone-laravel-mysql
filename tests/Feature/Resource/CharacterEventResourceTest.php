<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Enums\QueryEnum;
use App\Models\Character;
use Illuminate\Support\Facades\URL;
use Illuminate\Foundation\Testing\WithFaker;
use App\Http\Resources\CharacterEventResource;
use Illuminate\Foundation\Testing\RefreshDatabase;

/**
 * CharacterEventResourceTest
 *
 * Testa compatibilidade do retorno da api com o retorno do Resource
 *
 */
class CharacterEventResourceTest extends TestCase
{
    /**
     * testComparaRetornoDaApiComRetornoDaRotaDeEventsParaUriSemId
     *
     * Compara retorno da api com retorno da rota de comics para uri sem id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComRetornoDaRotaDeEventsParaUriSemId(): void
    {
        $url= URL::to('/api/characters//events');
        $response = $this->json('GET','/api/characters//events');

        $response->assertStatus(404)
            ->assertJson(['message' => $url." does not exist"]);
    }

    /**
     * testComparaRetornoDaApiComCharacterComicResourceParaUriComId
     *
     * Compara retorno da api com character event resource para uri com id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterEventResourceParaUriComId(): void
    {
        $offset = QueryEnum::DEFAULT_OFFSET;
        $limit = QueryEnum::DEFAULT_LIMIT;
        $orderBy = QueryEnum::DEFAULT_ORDER_FIELD;

        $character = Character::with(['charactersEvents'=> function ($query) use ($orderBy ,$limit ,$offset){
            $query->offset($offset)->limit($limit)->orderBy($orderBy, 'ASC');
        },'charactersEvents.event'])->whereHas('charactersEvents.event')->inRandomOrder()->first();

        $resource = CharacterEventResource::collection($character->charactersEvents);;

        $request = $this->json('GET','/api/characters/'.$character->id.'/events',['limit'=>$limit, 'offset'=>$offset, 'order'=>$orderBy]);

        //Dados retornados pelo Request da API
        $data = json_decode($request->getContent(), true);

        //Dados Retornados pelo Resource
        $resourceData = $resource->resolve();

        $this->assertEquals($data['data']['results'], $resourceData);

    }

    /**
     * testComparaRetornoDaApiComCharacterEventResourceParaUriComIdInexistente
     *
     * Compara retorno da api com character event resource para uri com id inexistente
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterEventResourceParaUriComIdInexistente(): void
    {

        $characterId = Character::Orderby('id', 'desc')->first()->id;
        $idInexistente = $characterId+1;

        $response = $this->json('GET', '/api/characters/'.$idInexistente.'/events');

        $response->assertStatus(404)
            ->assertJson(['message' => "No records found."]);

    }
}