<?php
Auth::routes();

Route::get('/logout', 'Auth\LoginController@logout');

Route::group(['middleware' => ['auth']], function () {
	Route::get('/home', 'Backend\BackendController@index')->name('home');	
});
Route::prefix('admin')->group(function () {
	Route::group(['middleware' => ['auth', 'role:admin']], function () {
		Route::get('user', 'Backend\BackendController@user_index')->name('backend.user_index');
		Route::get('user/create', 'Backend\BackendController@user_create')->name('backend.user_create');
		Route::post('user', 'Backend\BackendController@user_store')->name('backend.user_store');
		Route::get('user/{id}/edit', 'Backend\BackendController@user_edit')->name('backend.user_edit');
		Route::put('user/{id}', 'Backend\BackendController@user_update')->name('backend.user_update');
		Route::delete('user/{id}', 'Backend\BackendController@user_destroy')->name('backend.user_destroy');
	});
	
});



Route::prefix('editor-and-admin')->group(function () {
	Route::group(['middleware' => ['auth', 'role:admin|editor']], function () {		
		Route::get('change-profile', 'Backend\ProfileController@index')->name('backend.profile_index');
		Route::put('change-profile/{id}/update', 'Backend\ProfileController@update')->name('backend.profile_update');

		
		Route::get('setting', 'Backend\SettingController@index')->name('backend.setting_index');
		Route::post('setting', 'Backend\SettingController@update')->name('backend.setting_update');

		
		Route::get('about-us', 'Backend\AboutUsController@index')->name('backend.about_us_index');
		Route::post('about-us', 'Backend\AboutUsController@update')->name('backend.about_us_update');

		
		Route::get('homepage', 'Backend\HomepageController@index')->name('backend.homepage.index');
		Route::put('homepage/{id}', 'Backend\HomepageController@update')->name('backend.homepage.update');

		
		Route::delete('partner/bulk-delete', 'Backend\AffiliationController@bulk_delete')->name('backend.affiliation.bulk_delete');
		Route::resource('affiliation', 'Backend\AffiliationController', ['as' => 'backend']);

		
		Route::delete('testimonal/bulk-delete/', 'Backend\TestimonalController@bulk_delete')->name('backend.testimonal.bulk_delete');
		Route::resource('testimonal', 'Backend\TestimonalController',['as' => 'backend']);

		
		Route::get('album/photo/{id}', 'Backend\GalleryController@photos')->name('backend.album.photos');
		Route::resource('album', 'Backend\GalleryController', ['as' =>  'backend']);

		Route::delete('photo/bulk-delete', 'Backend\PhotoController@bulk_delete')->name('backend.photo.bulk_delete');
		Route::resource('photo', 'Backend\PhotoController', ['as' =>  'backend']);
		
		Route::resource('department', 'Backend\DepartmentController', ['as'=> 'backend']);
		Route::resource('team', 'Backend\TeamController',['as'=>'backend']);
		
	
		Route::get('cover-image/', 'Backend\CoverImageController@index')->name('backend.cover_image.index');
		Route::put('cover-image/{id}', 'Backend\CoverImageController@update')->name('backend.cover_image.update');
		
	
		Route::delete('page/bulk-delete', 'Backend\PagesController@bulk_delete')->name('backend.page.bulk_delete');
		Route::resource('page', 'Backend\PagesController',['as' => 'backend']);
		
	
		Route::delete('news/bulk-delete', 'Backend\NewsController@bulk_delete')->name('backend.news.bulk_delete');
		Route::resource('news', 'Backend\NewsController',['as'=>'backend']);
		
	
		Route::delete('service-category/bulk-delete', 'Backend\ServiceCategoryController@bulk_delete')->name('backend.service-category.bulk_delete');
		Route::resource('service-category', 'Backend\ServiceCategoryController',['as'=>'backend']);
		
	
		Route::delete('service/bulk-delete', 'Backend\ServiceController@bulk_delete')->name('backend.service.bulk_delete');
		Route::resource('service', 'Backend\ServiceController',['as'=>'backend']);
		
	
		Route::delete('feature/bulk-delete', 'Backend\FeatureController@bulk_delete')->name('backend.feature.bulk_delete');
		Route::resource('feature', 'Backend\FeatureController',['as'=>'backend']);
		
	
		Route::delete('branch/bulk-delete', 'Backend\BranchController@bulk_delete')->name('backend.branch.bulk_delete');
		Route::resource('branch', 'Backend\BranchController',['as'=>'backend']);
		
	
		Route::delete('faq/bulk-delete', 'Backend\FaqController@bulk_delete')->name('backend.faq.bulk_delete');
		Route::resource('faq', 'Backend\FaqController',['as'=>'backend']);
		
	
		Route::delete('event/bulk-delete', 'Backend\EventController@bulk_delete')->name('backend.event.bulk_delete');
		Route::resource('event', 'Backend\EventController',['as'=>'backend']);
		
		
		Route::get('enquiry/{id}', 'Backend\ApplyController@show')->name('backend.apply.show');
		Route::delete('enquiry/{id}', 'Backend\ApplyController@destroy')->name('backend.apply.destroy');
		
		
		Route::delete('download/bulk-delete', 'Backend\DownloadController@bulk_delete')->name('backend.download.bulk_delete');
		Route::resource('download', 'Backend\DownloadController',['as'=>'backend']);

		Route::delete('slider/bulk-delete', 'Backend\SliderController@bulk_delete')->name('backend.slider.bulk_delete');
		Route::resource('slider', 'Backend\SliderController',['as'=>'backend']);

		Route::get('calendar', 'Backend\CalendarController@index')->name('backend.calendar.index');
		Route::post('calendar', 'Backend\CalendarController@update')->name('backend.calendar.update');

		Route::delete('apply/bulk-delete', 'Backend\ApplyController@bulk_delete')->name('backend.apply.bulk_delete');
		Route::get('apply/download/{id}', 'Backend\ApplyController@download')->name('backend.apply.download');
		Route::resource('apply', 'Backend\ApplyController',['as'=>'backend']);
	});
	
});



Route::get('/', 'Frontend\FrontendController@index')->name('frontend_index');
Route::get('about-us', 'Frontend\FrontendController@about')->name('frontend.aboutUs');

Route::get('gallery', 'Frontend\FrontendController@gallery')->name('frontend.gallery');
Route::get('gallery-single/{id}', 'Frontend\FrontendController@gallery_single')->name('frontend.gallery_single');

Route::get('contact-us', 'Frontend\FrontendController@contactUs')->name('frontend.contactUs');
Route::post('contact-us', 'Frontend\FrontendController@contactUs_store')->name('frontend.contactUs_store');

Route::get('team', 'Frontend\FrontendController@team')->name('frontend.team');
Route::get('team-single/{id}', 'Frontend\FrontendController@team_single')->name('frontend.teamSingle');
Route::get('department/{id}', 'Frontend\FrontendController@department')->name('frontend.department');

Route::get('products', 'Frontend\FrontendController@products')->name('frontend.products');
Route::get('products/{slug}', 'Frontend\FrontendController@viewProduct')->name('frontend.viewProduct');

Route::get('news', 'Frontend\FrontendController@news')->name('frontend.news');
Route::get('news-single/{news_url}', 'Frontend\FrontendController@news_single')->name('frontend.newsSingle');

Route::get('services/{slug}', 'Frontend\FrontendController@viewServices')->name('frontend.viewServices');
Route::get('feature/{slug}', 'Frontend\FrontendController@viewFeature')->name('frontend.viewFeature');
Route::get('services', 'Frontend\FrontendController@services')->name('frontend.services');

Route::get('download', 'Frontend\FrontendController@download')->name('frontend.download');
Route::get('dl/{id}', 'Frontend\FrontendController@download_file')->name('frontend.download_file');

Route::get('pages/{slug}', 'Frontend\FrontendController@view_page')->name('frontend.view_page');

Route::get('calendar', 'Frontend\FrontendController@calendar')->name('frontend.calendar');
Route::get('calendar-download', 'Frontend\FrontendController@calendar_download')->name('frontend.calendar.download');

Route::get('apply', 'Backend\ApplyController@create')->name('frontend.apply.create');
Route::post('apply', 'Backend\ApplyController@store')->name('frontend.apply.store');

Route::any('/{any}', 'Frontend\FrontendController@any_route')->where('any', '.*');
