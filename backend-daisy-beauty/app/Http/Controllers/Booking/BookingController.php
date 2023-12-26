<?php

namespace App\Http\Controllers\Booking;

use App\Http\Controllers\BaseResponse;
use App\Http\Controllers\Controller;
use App\Http\Requests\BookingRequest;
use App\Jobs\SeendTelegram;
use App\Models\Booking;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class BookingController extends Controller
{
    public function booking(BookingRequest $request)
    {
        $validated = $request->validated();
        $booking = new Booking();
        $key = $this->generateRandomKey();
        $ip = $request->getClientIp();

        try {
            DB::beginTransaction();
            $booking->fill([
                "full_name" => $validated['full_name'],
                "phone" => $validated['phone'],
                "date_booking" => $validated['date_booking'],
                "time_booking" => $validated['time_booking'],
                "key_random" => $key,
                "service_id" => $validated['service_id'],
                "ip_customer" => $ip
            ]);

            if (Auth::check()) {
                $booking->user()->associate(Auth::user());
            }
            $booking->save();
            DB::commit();

            SeendTelegram::dispatch(
                $booking->id,
                $validated['full_name'],
                $validated['phone'],
                $validated['date_booking']
            );

            return BaseResponse::custom(["msg" => "Thành công!", "key" => $key]);
        } catch (\Exception $e) {
            DB::rollBack();
            return BaseResponse::custom(["msg" => "Thất bại!", 403]);
        }
    }

    public function checkBooking($key)
    {
        $booking = Booking::where("key_random", $key)->first();

        if (!$booking) {
            return BaseResponse::msg("Không tồn tại key", 404);
        }

        return BaseResponse::data([
            "date_booking" => $booking->date_booking
        ]);
    }

    public function generateRandomKey($length = 16)
    {
        $randomString = md5(uniqid(mt_rand(), true));
        $key = substr($randomString, 0, $length);
        return $key;
    }
}
