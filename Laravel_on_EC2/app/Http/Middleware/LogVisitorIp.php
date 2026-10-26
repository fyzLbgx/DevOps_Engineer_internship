<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class LogVisitorIp
{
    public function handle(Request $request, Closure $next)
    {
        Log::info('visit', [
            'ip' => $request->ip(),
            'method' => $request->method(),
            'path' => $request->path(),
            'user_agent' => $request->userAgent(),
        ]);

        return $next($request);
    }
}
