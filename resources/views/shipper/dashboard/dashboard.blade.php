@extends('frontend.dashboard.layouts.master')
@section('content')
<section id="wsus__dashboard">
    <div class="container-fluid">
    @include('frontend.dashboard.layouts.sidebar')
      <div class="row">
        <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
          <div class="dashboard_content">
            <div class="wsus__dashboard">
              <div class="row">
                <div class="col-xl-2 col-6 col-md-4">
                  <a class="wsus__dashboard_item red" href="dsahboard_order.html">
                    <i class="far fa-address-book"></i>
                    <p>Đặt hàng</p>
                  </a>
                </div>
                <div class="col-xl-2 col-6 col-md-4">
                  <a class="wsus__dashboard_item green" href="dsahboard_download.html">
                    <i class="fal fa-cloud-download"></i>
                    <p>Tải xuống</p>
                  </a>
                </div>
                <div class="col-xl-2 col-6 col-md-4">
                  <a class="wsus__dashboard_item sky" href="dsahboard_review.html">
                    <i class="fas fa-star"></i>
                    <p>Đánh giá</p>
                  </a>
                </div>
                <div class="col-xl-2 col-6 col-md-4">
                  <a class="wsus__dashboard_item blue" href="dsahboard_wishlist.html">
                    <i class="far fa-heart"></i>
                    <p>Danh sách mong muốn</p>
                  </a>
                </div>
                <div class="col-xl-2 col-6 col-md-4">
                  <a class="wsus__dashboard_item orange" href="dsahboard_profile.html">
                    <i class="fas fa-user-shield"></i>
                    <p>Hồ sơ</p>
                  </a>
                </div>
                <div class="col-xl-2 col-6 col-md-4">
                  <a class="wsus__dashboard_item purple" href="dsahboard_address.html">
                    <i class="fal fa-map-marker-alt"></i>
                    <p>Địa chỉ</p>
                  </a>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
</section>
@endsection
