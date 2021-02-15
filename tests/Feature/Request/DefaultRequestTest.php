<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\Character;
use Illuminate\Support\Facades\URL;

/**
 * DefaultRequestTest
 *
 * Testa os retornos da API para ações validas e inválidas
 */
class DefaultRequestTest extends TestCase
{

    /**
     * testValidacaoDeRequestComTodosOsParametrosValidos
     *
     * Validacao de request com todos os parametros validos
     *
     * @return void
     */
    public function testValidacaoDeRequestComTodosOsParametrosValidos()
    {

        $limit = rand(1,99);
        $offset = $limit-1;

        $response = $this->json('GET', '/api/characters/', [
            'order' => 'id',
            'limit' => $limit,
            'offset' => $offset,
        ]);

        $response->assertStatus(200);
    }

    /**
     * testValidacaoDeRequestComOffsetELimitInvalidos
     *
     * Validacao de request com offset e limit invalidos
     *
     * @return void
     */
    public function testValidacaoDeRequestComOffsetELimitInvalidos()
    {

        $limit = rand(101,200);
        $offset = $limit+1;

        $response = $this->json('GET', '/api/characters/', [
            'order' => 'id',
            'limit' => $limit,
            'offset' => $offset,
        ]);

        $response->assertStatus(409)->assertJson(['message' => "Limit greater than 100"]);
    }

    /**
     * testValidacaoDeRequestComOrderInvalido
     *
     * Validacao de request com order invalido
     *
     * @return void
     */
    public function testValidacaoDeRequestComOrderInvalido()
    {

        $limit = rand(1,100);
        $offset = $limit-1;

        $response = $this->json('GET', '/api/characters/', [
            'order' => 'character_id',
            'limit' => $limit,
            'offset' => $offset,
        ]);

        $response->assertStatus(409)
            ->assertJson(['message' => "Invalid or unrecognized ordering parameter"]);
    }

    /**
     * testValidacaoDeRequestComDadosInvalidos
     *
     * Validacao de request com dados invalidos
     *
     * @return void
     */
    public function testValidacaoDeRequestComDadosInvalidos()
    {

        $response = $this->json('GET', '/api/characters/', [
            'order' => 1,
            'limit' => '10',
            'offset' => '11',
        ]);

        $response->assertStatus(409)->assertJson(
            ['message' => "Invalid value passed to filter"]);
    }


    /**
     * testRequestSemParametrosParaAjusteAutomaticoDoSistema
     *
     * Validação request sem parametros para ajuste automatico do sistema
     *
     * @return void
     */
    public function testRequestSemParametrosParaAjusteAutomaticoDoSistema()
    {

        $response = $this->json('GET', '/api/characters/');

        $response->assertStatus(200);
    }


    /**
     * testRequestParaUriErrada
     *
     * Request para uri errada
     *
     * @return void
     */
    public function testRequestParaUriErrada()
    {

        $url=URL::to('/api/comics/');
        $response = $this->json('GET', '/api/comics/');

        $response->assertStatus(404)
            ->assertJson(['message' => $url." does not exist"]);
    }

    /**
     * testRequestComIdInexistenteNoBanco
     *
     * Validaçao Request com id inexistente no banco
     *
     * @return void
     */
    public function testRequestComIdInexistenteNoBanco()
    {
        $characterId = Character::Orderby('id', 'desc')->first()->id;
        $idInexistente = $characterId+1;

        $response = $this->json('GET', '/api/characters/'.$idInexistente);

        $response->assertStatus(404)
            ->assertJson(['message' => "No records found."]);
    }

}