@extends('admin.layouts.master')
@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Slider</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="#">Trang chủ</a></div>
                <div class="breadcrumb-item"><a href="#">Cài đặt chung</a></div>
                <div class="breadcrumb-item">Cài đặt</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">

                        <div class="card-body">
                            <div class="row">
                                <div class="col-2">
                                    <div class="list-group" id="list-tab" role="tablist">
                                        <a class="list-group-item list-group-item-action active" id="list-home-list"
                                            data-toggle="list" href="#list-home" role="tab">Cài đặt chung</a>
                                        <a class="list-group-item list-group-item-action" id="list-profile-list"
                                            data-toggle="list" href="#list-profile" role="tab">Hồ sơ</a>
                                        <a class="list-group-item list-group-item-action" id="list-messages-list"
                                            data-toggle="list" href="#list-messages" role="tab">Logo và Favicon</a>
                                        <a class="list-group-item list-group-item-action" id="list-pusher-list"
                                            data-toggle="list" href="#pusher-setting" role="tab">Cài đặt Pusher</a>
                                    </div>
                                </div>
                                <div class="col-8">
                                    <div class="tab-content" id="nav-tabContent">
                                        @include('admin.setting.general-setting')
                                        @include('admin.setting.profile')
                                        @include('admin.setting.logo-setting')
                                        @include('admin.setting.pusher-setting')
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
