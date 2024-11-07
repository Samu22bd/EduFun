@extends('layouts/main-layout')

@section('title','Post Detail')

@section('content')
    <h1>{{$postDetail->title}}</h1>
    <div>
        <img src="" alt="This is image">
        <p class="m-0">{{$postDetail->postDate}}| by: {{$postDetail->writer->name}}</p>
        <div class="text-center">
            {{$postDetail->material}}
        </div>
    </div>
@endsection