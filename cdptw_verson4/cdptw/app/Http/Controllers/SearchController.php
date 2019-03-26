<?php

namespace App\Http\Controllers;

use App\Http\Requests\SearchRequest;
use App\Search;
use App\Country;
use App\City;
use App\Seatype;
use Illuminate\Http\Request;

class SearchController extends Controller
{

    public function index()
    {

        $database = new Search();
        $countries = $database->getAllCountry();
        $cities = $database->getAllCity();
        $seatypies = $database->getAllSeattype();
        return view('search.search', compact('countries','cities','seatypies'));


    }


    public function store(SearchRequest $request)
    {
        //
//        $list = null;
//        $list = F::whereColumn(['from_id','=','$request->from'],
//        ['to_id','=','$request->to'],
//        ['time_s','=','$request->departure'],
//        ['time_e','=','$request->return']);
//        if(null == $list)
//        {
//            return view('country.detail');
//        }
//
//        return view('search.list',compact('list'));


    }



}
