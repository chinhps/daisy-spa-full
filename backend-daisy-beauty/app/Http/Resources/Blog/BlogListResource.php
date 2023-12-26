<?php

namespace App\Http\Resources\Blog;

use App\Http\Resources\BaseResource;
use Illuminate\Http\Request;

class BlogListResource extends BaseResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id" => $this->id,
            "title" => $this->title,
            "content" => $this->content,
            "slug" => $this->slug,
            "created_at" => $this->created_at,
        ];
    }
}
