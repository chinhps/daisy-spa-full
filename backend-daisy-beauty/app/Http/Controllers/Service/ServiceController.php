<?php

namespace App\Http\Controllers\Service;

use App\Http\Controllers\BaseResponse;
use App\Http\Controllers\Controller;
use App\Http\Resources\Service\ServiceListResource;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function all()
    {
        $services = Service::with('category')->get();
        return ServiceListResource::collection($services);
    }

    public function list(Request $request)
    {
        $category = $request->input('category');
        $name = $request->input('name');

        $services = Service::whereHas('category', function ($query) use ($category) {
            if ($category) {
                $query->where("slug", "like", $category);
            }
        });

        if ($name) {
            $services =  $services->where("name", "like", "%$name%");
        }

        return ServiceListResource::collection($services->paginate(15));
    }

    public function popular()
    {
        $services = Service::with('category')->paginate(4);
        return ServiceListResource::collection($services);
    }

    public function get($slug)
    {
        $service = Service::with('category')->where('slug', $slug)->first();
        if (!$service) {
            return BaseResponse::msg("Not found", 404);
        }
        return new ServiceListResource($service);
    }
}
