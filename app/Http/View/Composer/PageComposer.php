<?php
namespace App\Http\View\Composer;

use Illuminate\View\View;
use App\Model\Page;

class PageComposer
{
    public function compose(View $view)
    {
        $pages = Page::all();
        $view->with('pages',$pages);
    }
}
