<?php

class OneGameController{
    public function httpGetMethod(Http $http, array $queryFields){

        $oneGameModel = new OneGameModel();
        if ($queryFields['Id_Game'] == "1"){
            $khGame = $oneGameModel->khOneKey();
            return ['khGame' => $khGame];
        }
        else if ($queryFields['Id_Game'] == "2"){
            $khGame = $oneGameModel->khTwoKey();
            return ['khGame' => $khGame];
        }
        else if ($queryFields['Id_Game'] == "3"){
            $khGame = $oneGameModel->khThreeDKey();
            return ['khGame' => $khGame];
        }
        else if ($queryFields['Id_Game'] == "4"){
            $khGame = $oneGameModel->khBBSKey();
            return ['khGame' => $khGame];
        }
        else if ($queryFields['Id_Game'] == "5"){
            $khGame = $oneGameModel->khComKey();
            return ['khGame' => $khGame];
        }
    }

    public function httpPostMethod(Http $http, array $formFields){

    }
}