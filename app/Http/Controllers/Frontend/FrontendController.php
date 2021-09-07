<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\AboutUs;
use App\Model\Setting;
use Illuminate\Support\Facades\Mail;
use App\Mail\LeaveMailable;
use App\Model\Branch;
use App\Model\Calendar;
use App\Model\CoverImage;
use App\Model\Department;
use App\Model\Enquiry;
use App\Model\Event;
use App\Model\Faq;
use App\Model\Feature;
use App\Model\GalleryCategory;
use App\Model\News;
use App\Model\Page;
use App\Model\Service;
use App\Model\Team;
use App\Model\Gallery;
use App\Model\Homepage;
use App\Model\ServiceCategory;
use App\Model\Testimonal;
use Carbon\Carbon;
use App\Model\Download;
use App\Model\Slider;
use Illuminate\Support\Facades\Storage;



class FrontendController extends Controller
{
	public function index()
	{
		$sliders = Slider::asc()->get();
		$homepage = Homepage::firstOrFail();
		$aboutUs = AboutUs::first();
		$setting = Setting::first();
		$testimonals = Testimonal::test()->asc()->get();
		$message_from_board = Testimonal::msg()->asc()->get();
		$news = News::latest()->limit(5)->get();
		$events = Event::latest()->limit(4)->get();

		$services = ServiceCategory::with('service')->asc()->get();

		$setting = Setting::first();
		$features = Feature::asc()->get();
		$faq = Faq::asc()->get();
		$branches = Branch::asc()->get();

		$first_image =  Gallery::first();
		$second_image =  Gallery::skip(1)->take(1)->first();
		$third_image =  Gallery::skip(2)->take(1)->first();
		$forth_image =  Gallery::skip(3)->take(1)->first();
		// dd($forth_image);
		return view('frontend.index', compact(
			'sliders',
			'homepage',
			'aboutUs',
			'message_from_board',
			'setting',
			'testimonals',
			'news',
			'services',
			'features',
			'faq',
			'first_image',
			'second_image',
			'third_image',
			'forth_image',
			'events',
			'branches'
		));
	}

	public function about()
	{
		$aboutUs = AboutUs::first();
		return view('frontend.about', compact('aboutUs'));
	}

	public function news()
	{
		$news = News::latest()->get();
		// dd($news);
		$cover_image = CoverImage::first();
		return view('frontend.news', compact('news', 'cover_image'));
	}

	public function news_single($news_url)
	{
		$news = News::where('news_url', $news_url)->firstOrFail();
		$related_news = News::where('news_url', '!=', $news_url)
			->limit('5')
			->get();
		return view('frontend.news-single', compact('news', 'related_news'));
	}

	public function gallery()
	{
		$album = GalleryCategory::asc()->get();
		$cover_image = CoverImage::first();
		return view('frontend.gallery', compact('album', 'cover_image'));
	}

	public function gallery_single($id)
	{
		$album = GalleryCategory::where('id', $id)
			->first();
		$photos = Gallery::where('gallery_categories_id', $id)
			->get();
		return view('frontend.gallery-single', compact('photos', 'album'));
	}

	public function contactUs()
	{
		$setting = Setting::first();
		$cover_image = $this->cover_image();
		$branch = Branch::asc()->limit('4')->get();
		return view('frontend.contact', compact('setting', 'cover_image', 'branch'));
	}



	public function calendar()
	{
		$calendar = Calendar::first();


		return view('frontend.calendar', compact('calendar'));
	}



	public function calendar_download()
	{
		$calendar = Calendar::first();


		return Storage::download($calendar->file);
	}



	public function contactUs_store(Request $request)
	{
		try {
			$data = $request->all();
			Mail::to('sukrapath@gmail.com')->send(new LeaveMailable($data));
			Enquiry::create($data);
		} catch (\Exception $e) {
			return redirect()->back()->with('error_msg', 'Sorry! System error occoured.');
		}
		return redirect()->back()->with('success_msg', 'Thank you for the Enquiry. We will communicate to you as soon as possible.');
	}


	public function view_page($slug)
	{
		// dd($slug);
		$page = Page::where('page_url', $slug)->firstOrFail();
		return view('frontend.pages', compact('page'));
	}

	public function team()
	{
		$cover_image = CoverImage::first();
		$department = Department::with('team')->asc()->get();
		return view('frontend.team', compact('department', 'cover_image'));
	}

	public function viewServices($slug)
	{
		// dd($slug);
		$service = Service::with('service_category')->where('slug', $slug)->firstOrFail();

		$related_service = Service::where('slug', '!=', $slug)->get();

		return view('frontend.services-single', compact(
			'service',
			'related_service'
		));
	}

	public function viewFeature($slug)
	{
		// dd($slug);
		$feature = Feature::where('slug', $slug)->firstOrFail();

		$related_feature = Feature::where('slug', '!=', $slug)->get();

		return view('frontend.features-single', compact(
			'feature',
			'related_feature'
		));
	}

	public function services()
	{
		$cover_image  = CoverImage::first();
		$services = ServiceCategory::with('service')->asc()->get();
		$features = Feature::asc()->get();
		return view('frontend.services', compact(
			'cover_image',
			'services',
			'features'
		));
	}

	public function cover_image()
	{
		$data = CoverImage::first();
		return $data;
	}

	public function download()
	{
		$downloads  = Download::latest()->get();

		return view('frontend.download', compact(
			'downloads'
		));
	}

	public function download_file($id)
	{
		$download = Download::find($id);
		return Storage::download($download->file_name, $download->original_name);
	}

	public function department($id)
	{
		$department = Department::with('team')->where('id', $id)->firstOrFail();
		$cover_image = CoverImage::first();

		return view('frontend.department', compact('department', 'cover_image'));
	}

	public function any_route()
	{
		return redirect()->route('frontend_index');
	}
}
