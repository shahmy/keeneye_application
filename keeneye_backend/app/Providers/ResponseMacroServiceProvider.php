<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Response;

class ResponseMacroServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        Response::macro('responseFormat', function ($status_code, $status, $message, $data, $http_code) {
            $statusMessage = NULL;
            return Response::json([
                'status' => $status,
                'status_message' => $statusMessage,
                'message' => $message,
                'data' => $data,
            ], $http_code, [], JSON_UNESCAPED_SLASHES);
        });
    }
}
