@extends('admin.layouts.master')

@section('content')
    <!-- Main Content -->
    <section class="section">
        <div class="section-header">
            <h1>Điều khoản và điều kiện</h1>
        </div>

        <div class="section-body">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">

                        </div>
                        <div class="card-body">

                            <form action="{{ route('admin.terms-and-conditions.update') }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label>Nội dung chính sách</label>
                                    <textarea name="content" class="summernote">{!!@$content->content!!}</textarea>
                                </div>
                                
                                <button type="submit" class="btn btn-primary">Cập nhật</button>
                            </form>

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </section>
@endsection
