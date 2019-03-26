<?php

namespace App\Http\Controllers;

use App\Flightdetail;
use App\Flightlist;
use Illuminate\Http\Request;
use App\Http\Requests\SearchRequest;

class FlightlistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('flightlist.flightlist');
    }

    public function create()
    {
//        $s = new \DateTime('2019-07-24 01:01:00');
//        $e = new \DateTime('2019-07-24 06:03:00');
//        dd($e->diff($s));
//      dd(Flightdetail::where([['from_id', '=', 1], ['to_id', '=', 2],])->get()->toarray());



    }

    public function store(SearchRequest $request)
    {
        // khởi tạo 1 flightdetails

        $data = new Flightlist();
        $flights = $data->getFlightlist($request);

        return view('flightlist.flightlist', compact('flights'));

    }


}
