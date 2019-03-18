<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Flightlist extends Model
{
    //
    public function getFlightlist($data)
    {


        dd($e);
        // khởi tạo 1 flightdetails
        return Flightdetail::where([

            ['from_id', '=', $data->from],
            ['to_id', '=', $data->to],
            ['time_s', '>=', $data->departure]

        ])->get();



    }
}
