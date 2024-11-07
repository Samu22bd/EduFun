@extends('layouts/main-layout')

@section('title', 'Popular')

@section('content')

<div>
    <h1>Popular</h1>
    <div>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Judul</th>
                    <th>Waktu Post</th>
                    <th>Penulis</th>
                    <th>Material</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($postList as $post)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{$post->title}}</td>
                    <td>{{$post->postDate}}</td>
                    <td>{{$post->writer->name}}</td>
                    <td>{{$post->material}}</td>
                    <td>
                        <a href="post/{{$post->id}}">
                            <button>Read More</button>
                        </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    {{$postList->links()}}
</div>

@endsection