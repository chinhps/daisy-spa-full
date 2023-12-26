<?php

namespace App\Http\Controllers\Information;

use App\Http\Controllers\BaseResponse;
use App\Http\Controllers\Controller;
use App\Models\Information;
use Illuminate\Http\Request;

class InformationController extends Controller
{
    public function list()
    {
        $infor = Information::get()->toArray();
        return BaseResponse::data($infor);
    }
}
