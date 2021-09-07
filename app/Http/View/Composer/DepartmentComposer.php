<?php
namespace App\Http\View\Composer;

use Illuminate\View\View;
use App\Model\Affiliation;
use App\Model\Department;

class DepartmentComposer
{
    public function compose(View $view)
    {
        $departments_com = Department::asc()->get();
        $view->with('departments_com',$departments_com);
    }
}
