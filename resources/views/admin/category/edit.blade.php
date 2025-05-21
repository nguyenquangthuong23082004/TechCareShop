@extends('admin.layouts.master')

@section('content')
      <!-- Main Content -->
        <section class="section">
          <div class="section-header">
            <h1>Danh mục</h1>
          </div>

          <div class="section-body">

            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Chỉnh sửa danh mục</h4>

                  </div>
                  <div class="card-body">

                    <form action="{{route('admin.category.update',$category->id)}}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label>Icon</label>
                            <button class="btn btn-primary" data-selected-class="btn-danger"
                            data-unselected-class="btn-info" role="iconpicker" name="icon" data-icon="{{$category->icon}}"></button>
                        </div>
                        <div class="form-group">
                            <label>Tên danh mục</label>
                            <input type="text" class="form-control" name="name" value="{{$category->name}}">
                        </div>
                        <div class="form-group">
                            <label for="inputState">Trạng thái</label>
                            <select id="inputState" class="form-control" name="status">
                              <option value="1" @selected($category->status == 1)>Hoạt động</option>
                              <option value="0" @selected($category->status == 0)>Tắt hoạt động</option>
                            </select>
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
