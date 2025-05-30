<section id="wsus__hot_deals" class="wsus__hot_deals_2">
    <div class="container">
        <div class="wsus__hot_large_item">
            <div class="row">
                <div class="col-xl-12">
                    <div class="wsus__section_header justify-content-start">
                        <div class="monthly_top_filter2 mb-1">
                            <button class="active auto_click" data-filter=".new_arrival">Hàng mới về</button>
                            <button data-filter=".featured_product">Sản phẩm nổi bật</button>
                            <button data-filter=".top_product">Sản phẩm bán chạy</button>
                            <button data-filter=".best_product">Sản phẩm tốt nhất</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row grid2">
                @foreach ($typeBaseProducts as $key => $products)
                    @foreach ($products as $product)
                        <x-product-card :product="$product" :key="$key" />
                    @endforeach
                @endforeach
            </div>
        </div>
        <section id="wsus__single_banner" class="home_2_single_banner">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6">
                        <div class="wsus__single_banner_content banner_1">
                            @if ($homepage_section_banner_three->banner_one->status == 1)
                                <a href="{{ $homepage_section_banner_three->banner_one->banner_url }}">
                                    <img class="img-fluid"
                                        src="{{ asset($homepage_section_banner_three->banner_one->banner_image) }}"
                                        alt="">
                                </a>
                            @endif

                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="wsus__single_banner_content single_banner_2">
                                    @if ($homepage_section_banner_three->banner_two->status == 1)
                                        <a href="{{ $homepage_section_banner_three->banner_two->banner_url }}">
                                            <img class="img-fluid"
                                                src="{{ asset($homepage_section_banner_three->banner_two->banner_image) }}"
                                                alt="">
                                        </a>
                                    @endif
                                </div>
                            </div>
                            <div class="col-12 mt-lg-4">
                                <div class="wsus__single_banner_content">
                                    @if ($homepage_section_banner_three->banner_three->status == 1)
                                        <a href="{{ $homepage_section_banner_three->banner_three->banner_url }}">
                                            <img class="img-fluid"
                                                src="{{ asset($homepage_section_banner_three->banner_three->banner_image) }}"
                                                alt="">
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</section>
