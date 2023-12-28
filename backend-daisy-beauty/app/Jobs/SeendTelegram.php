<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class SeendTelegram implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     */
    public function __construct(
        protected string $id,
        protected string $name,
        protected string $phone,
        protected string $date,
        protected string $serviceName
    ) {
        //
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $message = "<b>KHÁCH HÀNG: #{$this->id}</b>\n <b>Họ tên:</b> {$this->name}\n <b>SĐT:</b> <a href=\"tel:+{$this->phone}\">{$this->phone}</a>\n <b>Thời gian:</b> {$this->date}\n <b>Dịch vụ:</b> {$this->serviceName}";
        reportTelegram($message);
    }
}
