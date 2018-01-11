<?php

class ListGamesModel {
    public function allGames(){

        $database = new Database();
        $sql = "SELECT Id, Name, Image, Game FROM Games";
        return $database->query($sql);
    }
}

?>