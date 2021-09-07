<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema; 
use App\Http\View\Composer\SettingComposer;
use App\Http\View\Composer\AboutUsComposer;
use App\Http\View\Composer\PageComposer;
use App\Http\View\Composer\AffiliationComposer;
use App\Http\View\Composer\DepartmentComposer;

class AppServiceProvider extends ServiceProvider
{
	public function register()
	{
        //
	}

	public function boot()
	{
		Schema::defaultStringLength(191); 

		View::composer(['include.frontend.navbar', 'include.frontend.footer'], SettingComposer::class);
		View::composer('include.frontend.navbar', DepartmentComposer::class);
		View::composer('include.frontend.footer', AboutUsComposer::class);
		View::composer('include.frontend.footer', PageComposer::class);
		View::composer('include.frontend.footer', AffiliationComposer::class);
	}
}
