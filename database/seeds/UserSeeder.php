<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
           'meno' => "janko",
            'priezvisko' => "Testovy",
            'email' => "Test@ukf.sk",
            'heslo' => bcrypt('secret'),
            'vek' => 30,
        ]);
    }
}
