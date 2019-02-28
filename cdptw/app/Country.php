<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    //
    protected $table = 'countries';
    // du lieu dien vao
    protected $fillable = ['id','name','code'];

    public function cities()
    {
        return $this->hasMany('App\City');
    }

    public function addCountry($data){
        Country::insert([
            'name' => $data->name,
            'code' => $data->code,
        ]);
    }
}
