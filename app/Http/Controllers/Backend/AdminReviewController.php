<?php

namespace App\Http\Controllers\Backend;

use App\DataTables\AdminReviewDataTable;
use App\Http\Controllers\Controller;
use App\Models\ProductReview;
use Illuminate\Http\Request;

class AdminReviewController extends Controller
{
    public function index(AdminReviewDataTable $dataTable)
    {
        return $dataTable->render('admin.product.review.index');
    }

    public function changeStatus(Request $request)
    {
        $review = ProductReview::findOrFail($request->id);
        $review->status = $request->status;
        $review->save();

        return response()->json(['message' => 'Trạng thái đã được cập nhật!']); // Sửa 'tin nhắn' thành 'message' để đồng nhất
    }
}
