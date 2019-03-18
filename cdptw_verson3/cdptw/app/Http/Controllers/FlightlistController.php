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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $s = new \DateTime('2019-07-24 01:01:00');
        $e = new \DateTime('2019-07-24 06:03:00');
        dd($e->diff($s));
//      dd(Flightdetail::where([['from_id', '=', 1], ['to_id', '=', 2],])->get()->toarray());



    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(SearchRequest $request)
    {
        // khởi tạo 1 flightdetails

        $data = new Flightlist();
        $flights = $data->getFlightlist($request);

        return view('flightlist.flightlist', compact('flights'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
