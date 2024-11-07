@extends('/layouts/main-layout')

@section('title', 'Writers Page')

@section('content')

<h1>Our Writers : </h1>
<div class="row text-center">
    @foreach ($writerList as $writer)   
        <div class="col-4">
            <a href="/writer/{{$writer->id}}" class="text-decoration-none">
                <img src="" alt="This is supposed to be writer image">
                <h3>{{$writer->name}}</h3>
                <p>{{$writer->job}}</p>
                <button class="btn btn-primary">Writer Posts</button>
            </a>
        </div>
    @endforeach
</div>
@endsection