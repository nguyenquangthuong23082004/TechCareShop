<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\GeneralSetting;
use App\Models\LogoSetting;
use App\Models\PusherSetting;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    use ImageUploadTrait;



    public function index()
    {
        $generalSettings = GeneralSetting::first();
        $logoSetting = LogoSetting::first();
        $pusherSetting = PusherSetting::first();
        return view('admin.setting.index', compact('generalSettings', 'logoSetting', 'pusherSetting'));
    }
    public function generalSettingUpdate(Request $request)
    {
        $request->validate([
            'site_name' => ['required', 'max:200'],
            'layout' => ['required', 'max:200'],
            'contact_email' => ['required', 'max:200'],
            'contact_phone' => ['required'],
            'contact_address' => ['required'],
            'map' => ['required'],
            'currency_icon' => ['required', 'max:200'],
            'time_zone' => ['required', 'max:200'],
        ]);
        GeneralSetting::updateOrCreate(
            ['id' => 1],
            [
                'site_name' => $request->site_name,
                'layout' => $request->layout,
                'contact_email' => $request->contact_email,
                'contact_phone' => $request->contact_phone,
                'contact_address' => $request->contact_address,
                'map' => $request->map,
                'currency_name' => $request->currency_name,
                'currency_icon' => $request->currency_icon,
                'time_zone' => $request->time_zone,
            ]
        );
        toastr('Cập nhật thành công !', 'success', 'Success');

        return redirect()->back();
    }
    public function logoSettingUpdate(Request $request)
    {
        $request->validate([

            'logo' => ['image', 'max:3000'],
            'favicon' => ['image', 'max:3000'],
        ]);

        $logoPath = $this->updateImage($request, 'logo', 'uploads', $request->old_logo);
        $favicon = $this->updateImage($request, 'favicon', 'uploads', $request->old_favicon);

        LogoSetting::updateOrCreate(
            ['id' => 1],
            [
                'logo' => !empty($logoPath) ? $logoPath : $request->old_logo,
                'favicon' => !empty($favicon) ? $favicon : $request->old_favicon,

            ]

        );
        toastr('Cập nhật thành công !', 'success', 'success');

        return redirect()->back();
    }


    // Pusher settings update
    public function pusherSettingUpdate(Request $request): RedirectResponse
    {
        $validatedData = $request->validate([
            'pusher_app_id' => ['required'],
            'pusher_key' => ['required'],
            'pusher_secret' => ['required'],
            'pusher_cluster' => ['required'],
        ]);

        PusherSetting::updateOrCreate(
            ['id' => 1],
            $validatedData,
        );
        toastr('Cập nhật thành công !', 'success', 'success');

        return redirect()->back();
    }
}
