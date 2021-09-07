<?php
namespace App\Http\View\Composer;

use Illuminate\View\View;
use App\Model\Setting;

class SettingComposer
{
    public function compose(View $view)
    {
        $setting = Setting::first();
        $view->with('setting',$setting);        
    }
}
