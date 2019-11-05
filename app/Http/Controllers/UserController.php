<?php


namespace App\Http\Controllers;

use App\Models\User;


class UserController extends Controller
{
/*public function testAction()
{
    $premena = "Cviko";

    for( $i = 0;  $i < 5;  $i++){
        echo  $premena .  $i . "<br>";
}
}*/

public function showAction($id){
    $user = User:: find($id);

    echo $user->email."<br>";
    echo $user->meno . " " . $user->priezvisko. "<br>";
    echo $user->vek."<br>";
    echo $user->updated_at;
}

    public function insertAction(){
        $user = new User();
        $user->meno =str_random(5);
        $user->priezvisko =str_random(5);
        $user->email = $user->meno . "." . $user->priezvisko . "@hmail.com";
        $user->vek = mt_rand(1,80);
        $user->save();
    }

    public function updateAction($id){
        $user= User::where("id", "=",$id)->first();
        $user->update(["vek" => mt_rand(1,80)]);

    }

    public function deleteAction($id){
        $user= User::find($id);
        $user->delete();

    }
    public function showAllAction()
    {
        $users = User::all();
       foreach($users as $user){
           echo $user->email . " " .$user->vek. " " . $user->updated_at."<br>";
       }
    }

}