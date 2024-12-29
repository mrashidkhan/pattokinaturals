<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    /**
     * The application's route middleware.
     *
     * These middleware may be assigned to groups or used individually.
     *
     * @var array
     */
    // protected $routeMiddleware = [
    //     // ...
    //     'auth' => \App\Http\Middleware\Authenticate::class,
    //     'redirect_if_authenticated' => \App\Http\Middleware\RedirectIfAuthenticated::class,
    //     // Other middleware...
    // ];

    // protected $routeMiddleware = [
    //     // Other middleware
    //     'admin' => \App\Http\Middleware\AdminMiddleware::class,
    //     'customer' => \App\Http\Middleware\CustomerMiddleware::class,
    // ];


    /**
     * The application's global HTTP middleware stack.
     *
     * This middleware is run during every request to your application.
     *
     * @var array
     */
    protected $middleware = [
        \App\Http\Middleware\TrustProxies::class,
        \App\Http\Middleware\CheckForMaintenanceMode::class,
        \Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull::class,
        \App\Http\Middleware\TrimStrings::class,
        \Illuminate\Session\Middleware\StartSession::class,
        \Illuminate\View\Middleware\ShareErrorsFromSession::class,
        \App\Http\Middleware\VerifyCsrfToken::class,
        \Illuminate\Routing\Middleware\SubstituteBindings::class,

    ];

    protected $routeMiddleware = [
        'admin' => \App\Http\Middleware\AdminMiddleware::class,
        'cust' => \App\Http\Middleware\CustomerMiddleware::class,
    ];

    /**
     * The application's middleware groups.
     *
     * @var array
     */
    protected $middlewareGroups = [
        'web' => [
            // Web middleware group
        ],

        'api' => [
            'throttle:api',
            'bindings',
        ],
    ];
}
