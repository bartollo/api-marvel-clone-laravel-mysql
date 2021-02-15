<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="https://cdn6.aptoide.com/imgs/7/1/9/7193e8b89af7d5650baa68bc75a64538_icon.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Marvel API Clone: Documentação</h3>

  <p align="center">
    Mysql 8 + Laravel 8
  </p>
</p>

<!-- ABOUT THE PROJECT -->
## Sobre o Prjeto

Projeto que remonta parte da [API da Marvel](https://developer.marvel.com/docs#!/public) utilizando o framework Laravel 8 e banco de dados Mysql 8. 

Endpoints disponíveis:

* `/v1/public/characters`
* `/v1/public/characters/{characterId}`
* `/v1/public/characters/{characterId}/comics`
* `/v1/public/characters/{characterId}/events`
* `/v1/public/characters/{characterId}/series`
* `/v1/public/characters/{characterId}/stories`


### Framworks Utilizados

* [MySql](https://mysql.com)
* [Laravel](https://laravel.com)



<!-- GETTING STARTED -->
## Começando

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisitos

* [Composer 2](https://getcomposer.org/)
* [NPM 6.14](https://www.npmjs.com/package/npm)
* [PHP 7.4](https://php.net)
* [MySql 8](https://dev.mysql.com/downloads/mysql/5.7.html)


### Instalação

1. Faça eownload e descompacte a versão em https://github.com/bartollo/clone-api-marvel-laravel
1. Entre na pasta do projeto e digite no console `composer install`
1. Install javascript assets `npm install`
1. Crie o seu arquivo .env com os dados do seu ambiente.
1. Execute as migrations para criar o banco de dados `php artisan migrate`
1. Execute os seeders para popular o banco de dados.
1. Caso prefira fazer a importação do .sql  ao invés de executar as migrations e seeders. O arquivo marvel_db.sql está na pasta raiz do projeto.
1. Execute o laravel server com o comando `php artisan serve`


<!-- USAGE EXAMPLES -->
## Utilzação

| Method  | URI | Descrição |
| ------------- | ------------- | ------------- |
| GET/HEAD  | api/characters  | Exibe lista de personagens. |
| GET/HEAD  | api/characters/{characterId}  | Exibe personagem de acordo com especificação do seu id. |
| GET/HEAD  | api/characters/{characterId}/comics  | Exibe lista de COMICS relacionadas ao personagem especificado. |
| GET/HEAD  | api/characters/{characterId}/events  | Exibe lista de EVENTS relacionadas ao personagem especificado.|
| GET/HEAD  | api/characters/{characterId}/series  | Exibe lista de SERIES relacionadas ao personagem especificado.|
| GET/HEAD  | api/characters/{characterId}/stories  | Exibe lista de STORIES relacionadas ao personagem especificado.|


### Dados api/characters e api/characters/{characterId} 

| Campo  | Descrição | Tipo |
| ------------- | ------------- | ------------- |
|id| Código do personagem | Inteiro |
|name| Nome do personagem | String |
|description| Descrição do personagem | String |
|modified| Data de Atualização do personagem | Data |
|resourceURI| URI do personagem | String |
|thumbnail| Array com Dados do Thumbnail do personagem | String |
|comics| Array com Dados das COMICS do personagem | Array |
|series| Array com Dados das SERIES do personagem | Array |
|events| Array com Dados das EVENTS do personagem | Array |
|stories| Array com Dados das STORIES do personagem | Array |
|url| Array com Dados das URLs do personagem | Array |


### Dados api/characters/{characterId}/comics

| Campo  | Descrição | Tipo |
| ------------- | ------------- | ------------- |
|resourceURI| URI do COMIC | String |
|name| Nome do COMIC | String |

### Dados api/characters/{characterId}/events

| Campo  | Descrição  | Tipo |
| ------------- | ------------- | ------------- |
|resourceURI| URI do EVENT | String |
|name| Nome do EVENT | String |

### Dados api/characters/{characterId}/series

| Campo  | Descrição | Tipo |
| ------------- | ------------- | ------------- |
|resourceURI| URI da SERIE | String |
|name| Nome da SERIE | String |

### Dados api/characters/{characterId}/stories

| Campo  | Descrição  | Tipo |
| ------------- | ------------- | ------------- |
|resourceURI| URI do STORY | String |
|name| Nome do STORY | String |
|type| Tipo da STORY | String |


Os parâmetros e códigos de Erros são aplicados a todos os EndPoints informados.

### Parâmetros:

1. **orderBy (String)**: Define o campo que vai ordenar o resultado exibido. Valores Aceitos: id, name.
1. **limit (inteiro)**: Limita a resultado definido para o número especificado informado.
1. **offset (inteiro)**: Ignora o número especificado de recursos no conjunto de resultados.

### Error Status Codes:

1. 409 -	Limit greater than 100.
1. 409 -	Limit invalid or below 1.
1. 409 -	Invalid or unrecognized parameter.
1. 409 -	Empty parameter.
1. 409 -	Invalid or unrecognized ordering parameter.
1. 409 -	Too many values sent to a multi-value list filter.
1. 409 -	Invalid value passed to filter.

### Formato Padrão de Resposta

1. code (int, optional): The HTTP status code,
1. status (string, optional): Descrição do status.,
1. copyright (string, optional): Dados de copyright,
1. attributionText (string, optional): Informações do Data Provider,
1. attributionHTML (string, optional): Informações do Data Provider em HTML.,
1. data (CharacterDataContainer, optional): Resultado da chamada,
1. etag (string, optional): Um valor resumido do conteúdo retornado pela chamada.

```text
{
    "code": 200,
    "status": "OK",
    "copyright": "© 2021 MARVEL",
    "attributionText": "Data provided by Marvel. © 2021 MARVEL",
    "attributionHTML": "<a href=\"http://marvel.com\">Data provided by Marvel. © 2021 MARVEL</a>",
    "etag": "f0fbae65eb2f8f28bdeea0a29be8749a4e67acb3",
    "data": {
}  
```
<!-- TEST -->
## Testes

```text
php artisan test
```

<!-- OBSERVAÇÃO -->
## Observação

1. Os dados apresentados pela API não são os mesmos da Marvel. Todos as informações estão sendo geradas pelas factories através do classe fake.


<!-- OBSERVAÇÃO -->
## Próximas Implementações

1. Implementação de Proxy Design Pattern: Criação de classes **Proxy** que herdarão a classe Model e farão a interação entre a classe controller e resource.
Nesta classe irá existir metods get e set e outros.

1. Implementação de Strategy Design Pattern: Criação de classes de **Enum implementation** para valores padrões utlizados principalmente nos parâmetros de entrada da api, dentro outros.

1. Implementação de Casses Filters para melhorar Coesão: Criação de classes **Filter** que vai ser responsável por administrar os parâmetros recebidos pelas classes Request, removendo a responsabilidade das outras classes que os manipulam.


<!-- LICENSE -->
## Licença

Distributed under the MIT Licença. See `LICENSE` for more information.


<!-- CONTACT -->
## Contato

Luiz Bartolomeu  - luizbart@gmail.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)
