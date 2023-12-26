<?php

use Illuminate\Support\Facades\Http;

if (!function_exists('reportTelegram')) {
    function reportTelegram($text)
    {
        $key = "bot6524382227:AAEoQEJOjilcM6LbvwtIIilYD9D0h11dtMc";
        $chatId = "-1001993667308";
        $response = Http::get("https://api.telegram.org/$key/sendMessage", [
            "chat_id" => $chatId,
            "text" => $text,
            "parse_mode" => "html"
        ]);
        return $response;
    }
}
