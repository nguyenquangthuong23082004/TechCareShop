@extends('frontend.layouts.master')
@section('content')
    <!--============================
                                                                     BREADCRUMB START
                                                                ==============================-->
    <section id="wsus__breadcrumb">
        <div class="wsus_breadcrumb_overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h4>Đăng nhập / Đăng ký</h4>
                        <ul>
                            <li><a href="#">Trang chủ</a></li>
                            <li><a href="#">Đăng nhập / Đăng ký</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
                                                                    BREADCRUMB END
                                                                ==============================-->


    <!--============================
                                                                   LOGIN/REGISTER PAGE START
                                                                ==============================-->
    <section id="wsus__login_register">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 m-auto">
                    <div class="wsus__login_reg_area">
                        <ul class="nav nav-pills mb-3" id="pills-tab2" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pills-home-tab2" data-bs-toggle="pill"
                                    data-bs-target="#pills-homes" type="button" role="tab" aria-controls="pills-homes"
                                    aria-selected="true">Đăng nhập</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-profile-tab2" data-bs-toggle="pill"
                                    data-bs-target="#pills-profiles" type="button" role="tab"
                                    aria-controls="pills-profiles" aria-selected="true">Đăng ký</button>
                            </li>
                        </ul>
                        <div class="tab-content" id="pills-tabContent2">
                            <div class="tab-pane fade show active" id="pills-homes" role="tabpanel"
                                aria-labelledby="pills-home-tab2">
                                <div class="wsus__login">
                                    <form method="POST" action="{{ route('login') }}">
                                        @csrf
                                        <!-- Email Address -->
                                        <div class="wsus__login_input">
                                            <i class="fas fa-user-tie"></i>
                                            <input type="email" id="email" name="email" value="{{ old('email') }}"
                                                placeholder="Nhập địa chỉ email">
                                        </div>
                                        <!-- Password -->
                                        <div class="wsus__login_input">
                                            <i class="fas fa-key"></i>
                                            <input id="password" name="password" type="password" placeholder="Mật khẩu">
                                        </div>
                                        <!-- Remember Me -->
                                        <div class="wsus__login_save">
                                            <div class="form-check form-switch">
                                                <input name="remember" class="form-check-input" type="checkbox"
                                                    id="flexSwitchCheckDefault">
                                                <label class="form-check-label" for="flexSwitchCheckDefault">Lưu đăng
                                                    nhập</label>
                                            </div>
                                            @if (Route::has('password.request'))
                                                <a class="forget_p" href="{{ route('password.request') }}">Quên mật khẩu
                                                    ?</a>
                                            @endif
                                        </div>
                                        <button class="common_btn" type="submit">Đăng nhập</button>
                                        {{-- <p class="social_text">Sign in with social account</p>
                                        <ul class="wsus__login_link">
                                            <li><a href="#"><i class="fab fa-google"></i></a></li>
                                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                        </ul> --}}
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pills-profiles" role="tabpanel"
                                aria-labelledby="pills-profile-tab2">
                                <div class="wsus__login">
                                    <form method="POST" action="{{ route('register') }}">
                                        @csrf
                                        <!-- Name -->
                                        <div class="wsus__login_input">
                                            <i class="fas fa-user-tie"></i>
                                            <input type="text" id="name" name="name" value="{{ old('name') }}"
                                                placeholder="Tên">
                                        </div>
                                        <!-- Email Address -->
                                        <div class="wsus__login_input">
                                            <i class="far fa-envelope"></i>
                                            <input type="email" id="email" name="email" value="{{ old('email') }}"
                                                placeholder="Email">
                                        </div>
                                        <!-- Password -->
                                        <div class="wsus__login_input">
                                            <i class="fas fa-key"></i>
                                            <input id="password" type="password" name="password" placeholder="Mật khẩu">
                                        </div>
                                        <!-- Confirm Password -->
                                        <div class="wsus__login_input">
                                            <i class="fas fa-key"></i>
                                            <input id="password_confirmation" type="password" name="password_confirmation"
                                                placeholder="Xác nhận mật khẩu">
                                        </div>
                                        <button class="common_btn mt-3" type="submit">Đăng ký</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
                                                                   LOGIN/REGISTER PAGE END
                                                                ==============================-->
@endsection
