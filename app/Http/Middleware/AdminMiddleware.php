<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // Check if the user is authenticated
        if (!Auth::check()) {
            return redirect('/admin/login'); // Redirect to login if not authenticated
        }

        // Check if the user is an admin
        if (Auth::user()->role !== 'admin') {
            return redirect('/'); // Redirect to home if the user is not an admin
        }

        return $next($request); // Proceed to the next request
    }
}
