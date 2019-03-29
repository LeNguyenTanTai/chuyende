<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Flightdetail extends Model
{
    //
    protected $table = 'flightdetails';
    // du lieu dien vao
    protected $fillable = ['id','airline_id','code','from_id','to_id','time_s','time_e','price'];

    public function city1()
    {
        return $this->belongsTo('App\City', 'from_id');
    }
    public function city2()
    {
        return $this->belongsTo('App\City', 'to_id');
    }
    public function airline()
    {
        return $this->belongsTo('App\Airline', 'airline_id');
    }

}
