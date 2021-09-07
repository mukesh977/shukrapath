<?php
namespace App\Http\View\Composer;

use Illuminate\View\View;
use App\Model\Affiliation;

class AffiliationComposer
{
    public function compose(View $view)
    {
        $affiliation = Affiliation::asc()->limit('4')->get();
        $view->with('affiliation',$affiliation);
    }
}
