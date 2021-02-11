<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCharactersUrlsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('characters_urls', function (Blueprint $table) {
            $table->id();
            $table->string('character_url_type_name', 15);
            $table->string('url', 500);
            $table->foreignId('character_id');
            $table->timestamps();
            $table->foreign('character_id')->references('id')->on('characters');
            $table->foreign('character_url_type_name')->references('name')->on('characters_urls_types');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('characters_urls');
    }
}