<?php

namespace App\Http\Middleware;

use Closure;

class Owner
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //Owner: Mohamed@Yahoo.Com

        $user= auth()->user();

        if($user->email == 'Mohamed@Yahoo.Com')
        {
            return $next($request);
        }
           return abort(404);
    }
}
