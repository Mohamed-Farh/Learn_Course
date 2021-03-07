<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use App\Models\Track;

class TrackController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tracks = Track::orderBy('id', 'desc')->paginate(15);
        return view('admin.tracks.index', compact('tracks'));
    }

    public function store(Request $request)
    {
        $rules =[
            'name' => 'required|min:3|max:50',
        ];

        $this->validate($request,$rules);

        // dd($request->all());

        if(Track::create($request->all() ))
        {
            return redirect('/admin/tracks')->withStatus('Track Successfully Created');
        }
        else
        {
            return redirect('/admin/tracks')->withStatus('Something Wrong, Please Try Again');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Track $track)
    {
        return view('admin.tracks.show', compact('track'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Track $track)
    {
        return view('admin.tracks.edit', compact('track'));
    }



    public function update(Request $request, Track $track)
    {
        $rules =[
            'name' => 'required|min:3|max:50',
        ];

        $this->validate($request,$rules);

        if($request->has('name'))
        {
            $track->name=$request->name;
        }
        
        if($track->isDirty())
        {
            $track->save();
            return redirect('/admin/tracks')->withStatus('Track Successfully Updated');
        }
        else
        {
            return redirect('/admin/tracks')->withStatus('Something Wrong, Nothing Changed');
        }
    }

    public function destroy(Track $track)
    { 
        $track->delete();

        return redirect('/admin/tracks')->withStatus('Track Successfully Deleted');

    }
}
