<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\BaseResponse;
use App\Http\Controllers\Controller;
use App\Http\Resources\Blog\BlogListResource;
use App\Models\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function list()
    {
        $blogs = Blog::paginate(15);
        return BlogListResource::collection($blogs);
    }

    public function get($slug)
    {
        $blog = Blog::where('slug', $slug)->first();
        if (!$blog) {
            return BaseResponse::msg("Not found", 404);
        }
        return new BlogListResource($blog);
    }
}
