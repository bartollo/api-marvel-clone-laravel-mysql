<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Enums\QueryEnum;
use App\Models\Character;
use Illuminate\Support\Facades\URL;
use Illuminate\Foundation\Testing\WithFaker;
use App\Http\Resources\CharacterEventResource;
use App\Http\Resources\CharacterSerieResource;
use Illuminate\Foundation\Testing\RefreshDatabase;

/**
 * CharacterSerieResourceTest
 *
 * Testa compatibilidade do retorno da api com o retorno do Resource
 *
 */
class CharacterSerieResourceTest extends TestCase
{
    /**
     * testComparaRetornoDaApiComRetornoDaRotaDeSeriesParaUriSemId
     *
     * Compara retorno da api com retorno da rota de series para uri sem id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComRetornoDaRotaDeSeriesParaUriSemId(): void
    {
        $url= URL::to('/api/characters//series');
        $response = $this->json('GET','/api/characters//series');

        $response->assertStatus(404)
            ->assertJson(['message' => $url." does not exist"]);
    }

    /**
     * testComparaRetornoDaApiComCharacterSerieResourceParaUriComId
     *
     * Compara retorno da api com character serie resource para uri com id
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterSerieResourceParaUriComId(): void
    {
        $offset = QueryEnum::DEFAULT_OFFSET;
        $limit = QueryEnum::DEFAULT_LIMIT;
        $orderBy = QueryEnum::DEFAULT_ORDER_FIELD;

        $character = Character::with(['characterSeries' => function ($query) use ($orderBy ,$limit ,$offset){
            $query->offset($offset)->limit($limit)->orderBy($orderBy, 'ASC');
        },'characterSeries.serie'])->whereHas('characterSeries.serie')->inRandomOrder()->first();

        $resource = CharacterSerieResource::collection($character->characterSeries);;

        $request = $this->json('GET','/api/characters/'.$character->id.'/series',['limit'=>$limit, 'offset'=>$offset, 'order'=>$orderBy]);

        //Dados retornados pelo Request da API
        $data = json_decode($request->getContent(), true);

        //Dados Retornados pelo Resource
        $resourceData = $resource->resolve();

        $this->assertEquals($data['data']['results'], $resourceData);

    }

    /**
     * testComparaRetornoDaApiComCharacterSerieResourceParaUriComIdInexistente
     *
     * Compara retorno da api com character serie resource para uri com id inexistente
     *
     * @return void
     */
    public function testComparaRetornoDaApiComCharacterSerieResourceParaUriComIdInexistente(): void
    {

        $characterId = Character::Orderby('id', 'desc')->first()->id;
        $idInexistente = $characterId+1;

        $response = $this->json('GET', '/api/characters/'.$idInexistente.'/series');

        $response->assertStatus(404)
            ->assertJson(['message' => "No records found."]);

    }

}