<?php

namespace App\Http\Controllers\Frontend;

use App\DataTables\UserProductReviewsDataTable;
use App\Http\Controllers\Controller;
use App\Models\ProductReview;
use App\Models\ProductReviewGallery;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    use ImageUploadTrait;


    public function index(UserProductReviewsDataTable $dataTable)
    {
        return $dataTable->render('frontend.dashboard.review.index');
    }

    public function create(Request $request)
    {
        $request->validate([
            'rating' => ['required'],
            'review' => ['required', 'max:200'],
            'images.*' => ['image']
        ]);

        $checkReviewExist = ProductReview::where([
            'product_id' => $request->product_id, // Sửa 'order_status' thành 'product_id'
            'user_id' => Auth::user()->id
        ])->first();

        if ($checkReviewExist) {
            toastr('Bạn đã thêm đánh giá cho sản phẩm này!', 'error', 'Lỗi');
            return redirect()->back();
        }

        $imagePaths = $this->uploadMultiImage($request, 'images', 'uploads');

        $productReview = new ProductReview();
        $productReview->product_id = $request->product_id;
        $productReview->vendor_id = $request->vendor_id;
        $productReview->user_id = Auth::user()->id;
        $productReview->rating = $request->rating;
        $productReview->review = $request->review;
        $productReview->status = 0;
        $productReview->save();


        if (!empty($imagePaths)) {

            foreach ($imagePaths as $path) {
                $reviewGallery = new ProductReviewGallery();
                $reviewGallery->product_review_id = $productReview->id;
                $reviewGallery->image = $path;
                $reviewGallery->save();
            }
        }

        toastr('Đánh giá đã được gửi thành công', 'thành công', 'thành công');

        return redirect()->back();
    }
    public function changeStatus(Request $request)
    {
        $brand = Brand::findOrFail($request->id);
        $brand->status = $request->status;
        $brand->save();
        return response(['message' => 'Trạng thái đã được cập nhật!']);
    }
}
