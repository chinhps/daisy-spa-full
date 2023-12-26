<?php

namespace App\Http\Requests;

class BookingRequest extends BaseRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            "date_booking" => "required|date_format:Y-m-d",
            "full_name" => "required|string|min:8",
            "phone" => "required|string|regex:/^0\d{9}$/",
            "service_id" => "required|exists:services,id",
            "time_booking" => "required",
        ];
    }
}
