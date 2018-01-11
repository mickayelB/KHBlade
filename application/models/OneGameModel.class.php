<?php

class OneGameModel {
    public function khOneKey(){
        $database = new Database();
        $sql = "SELECT Id, KeybladeName, Image, Description, Strength, MP, CritRate, CritBonus, Recoil, Obtain, Id_Games FROM kh1";
        return $database->query($sql);
    }

    public function khTwoKey(){
        $database = new Database();
        $sql = "SELECT Id, KeybladeName, Image, Description, Strength, Magic, KeyLength, Ability, Obtain, Id_Games FROM kh2";
        return $database->query($sql);
    }

    public function khThreeDKey(){
        $database = new Database();
        $sql = "SELECT Id, KeybladeName, Image, Description, Strength, Magic, KeyLength, CritRate, ShiftRate, Obtain, Id_Games FROM khddd";
        return $database->query($sql);
    }

    public function khBBSKey(){
        $database = new Database();
        $sql = "SELECT Id, KeybladeName, Image, Description, HeroWielder, Strength, Magic, KeyLength, CritRate, CritDamage, Obtain, Id_Games FROM khbbs";
        return $database->query($sql);
    }

    public function khComKey(){
        $database = new Database();
        $sql = "SELECT Id, KeybladeName, Image, Description, Strike, Thrust, ComboFinish, SwingSpeed, BreakRecovery, CP, Element, Obtain, Id_Games FROM khcom";
        return $database->query($sql);
    }
}

?>