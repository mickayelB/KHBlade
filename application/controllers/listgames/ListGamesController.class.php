<?php

class ListGamesController{
    public function httpGetMethod(Http $http, array $queryFields){

        $listGamesModel = new ListGamesModel();
        $listGames = $listGamesModel->allGames();
        return ['listGames' => $listGames];
    }

    public function httpPostMethod(Http $http, array $formFields){

    }
}