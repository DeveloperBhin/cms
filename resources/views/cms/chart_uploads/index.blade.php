@extends('cms.application')
@section('title')
Chart Uploads
@endsection

@section('content')

<div class="card">

    <div class="card-header d-flex justify-content-between align-items-center">

        <h4>Chart Uploads</h4>

        <a href="{{ route('chart_uploads.create') }}" class="btn btn-primary">
            Upload PDF
        </a>

    </div>

    <div class="card-body">

        <table class="table table-bordered table-striped">

            <thead>
                <tr>
                    <th>#</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>PDF</th>
                    <th>Uploaded</th>
                    <th>Actions</th>
                </tr>
            </thead>

            <tbody>

                {{-- Data will be added later --}}

                <tr>
                    <td colspan="6" class="text-center">
                        No PDFs Found
                    </td>
                </tr>

            </tbody>

        </table>

    </div>

</div>

@endsection