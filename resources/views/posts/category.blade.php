@extends('layouts/main-layout')

@section('title','Category')

@section('content')
    <h1>{{$category}}</h1> 
    <div>
        @foreach ($postList as $post)
        <div class="row p-3">
            <div class="col-3">
                <img src="" alt="This is the image">
            </div>
            <div class="col-9">
                <h3>{{$post->title}}</h3>
                <p class="m-0">{{$post->postDate}}| by: {{$post->writer->name}}</p>
                <h4>{{$post->summary}}</h4>
                <a href="post/{{$post->id}}">
                    <button>read more...</button>
                </a>
            </div>
        </div>
        @endforeach
    </div>
@endsection