<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\FlashSale;
use App\Models\FlashSaleItem;
use Illuminate\Http\Request;

class FlashSaleController extends Controller
{
    public function index()
    {

        $flashSaleDate = FlashSale::first();
        $flashSaleItems = FlashSaleItem::where('status', 1)
            ->with(['product' => function ($query) {
                $query->where('status', 1)->where('qty', '>', 0);
            }])
            ->whereHas('product', function ($query) {
                $query->where('status', 1)->where('qty', '>', 0);
            })->orderBy('id', 'ASC')->pluck('product_id')->toArray();;
        return view('frontend.pages.flash-sale', compact(
            'flashSaleDate',
            'flashSaleItems'
        ));
    }
}
