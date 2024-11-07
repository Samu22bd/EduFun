<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Writer;
use Illuminate\Http\Request;

class PostController extends Controller
{
    //
    public function index(){
        $postList = Post::all();
        return view('home', ['postList' => $postList]);
    }

    public function viewIM(){
        $im = 'Interactive Multimedia';
        $ims = Post::with('writer')->where('category', $im)->get();
        return view('posts/category', ['postList' => $ims, 'category' => $im]);
    }

    public function viewSE(){
        $se = 'Software Engineering';
        $ses = Post::with('writer')->where('category', $se)->get();
        return view('posts/category', ['postList' => $ses, 'category' => $se]);
    }

    public function showByPostID($id){
        $post = Post::findOrFail($id);
        $post->increment('viewCount');
        return view('posts/detail', ['postDetail' => $post]);
    }

    public function showByWriterID($id){
        $writer = Writer::with('posts')->findOrFail($id);
        $posts = Post::with('writer')->where('writer_id', $id)->get();
        return view('writer/posts', ['postList' => $posts, 'writer' => $writer]);
    }

    public function showAllPost(){
        $posts = Post::orderBy('viewCount', 'desc')->paginate(3);
        return view('posts/popular', ['postList' => $posts]);
    }
}
