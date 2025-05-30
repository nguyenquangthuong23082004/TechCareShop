@extends('admin.layouts.master')
@section('content')
<section class="section">
    <div class="section-header">
      <h1>Danh sách khách hàng</h1>
    </div>

    <div class="section-body">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h4>Danh sách khách hàng</h4>
            </div>
            <div class="card-body">
                {{ $dataTable->table() }}
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
@endsection
@push('scripts')
    {{ $dataTable->scripts(attributes: ['type' => 'module']) }}
    {{-- <script>
        $(document).ready(function() {
            $('body').on('click', '.change-status', function() {
                let isChecked = $(this).is(':checked') ? 1 : 0;
                let id = $(this).data('id');

                $.ajax({
                    url: "{{ route('admin.customer.status-change') }}",
                    type: "PUT",
                    data: {
                        _token: "{{ csrf_token() }}",
                        id: id,
                        status: isChecked
                    },
                    success: function(data) {
                        toastr.success(data.message);
                    },
                    error: function(xhr, status, error) {
                        console.log(xhr.responseText);
                        toastr.error('Something went wrong!');
                    }
                });
            });
        });
    </script> --}}
@endpush
