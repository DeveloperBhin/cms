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
                    <th width="180">Actions</th>
                </tr>
            </thead>

            <tbody>

                @forelse($uploads as $key => $upload)
                <tr>
                    <td>{{ $key + 1 }}</td>

                    <td>{{ $upload->title }}</td>

                    <td>{{ $upload->description }}</td>

                    <td>
                    @if($upload->file)
    <a href="{{ asset($upload->file) }}" target="_blank" class="btn btn-info btn-sm">
        View PDF
    </a>
@else
    <span class="text-danger">No PDF</span>
@endif
                        
                    </td>

                    <td>{{ $upload->created_at->format('d M Y') }}</td>

                    <td>
                        <a href="{{ route('chart_uploads.edit', $upload->id) }}"
                           class="btn btn-warning btn-sm">
                            Edit
                        </a>

                        <form action="{{ route('chart_uploads.destroy', $upload->id) }}"
                              method="POST"
                              class="d-inline">

                            @csrf
                            @method('DELETE')

                            <button class="btn btn-danger btn-sm"
                                    onclick="return confirm('Delete this PDF?')">
                                Delete
                            </button>

                        </form>
                    </td>

                </tr>
                @empty
                <tr>
                    <td colspan="6" class="text-center">
                        No PDFs Found
                    </td>
                </tr>
                @endforelse

            </tbody>

        </table>

    </div>

</div>

@endsection