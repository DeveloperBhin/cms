@extends('cms.application')

@section('title')
Chart Uploads
@endsection

@section('content')

<div class="card">

    <div class="card-header">
        <h4>Upload Chart PDF</h4>
    </div>

    <div class="card-body">

        <form action="{{ route('chart_uploads.store') }}"
              method="POST"
              enctype="multipart/form-data">

            @csrf

            <div class="form-group mb-3">

                <label for="title">
                    Title
                </label>

                <input type="text"
                       name="title"
                       id="title"
                       class="form-control"
                       placeholder="Enter PDF title"
                       value="{{ old('title') }}">

                @error('title')
                    <small class="text-danger">
                        {{ $message }}
                    </small>
                @enderror

            </div>


            <div class="form-group mb-3">

                <label for="description">
                    Description
                </label>

                <textarea name="description"
                          id="description"
                          class="form-control"
                          rows="4"
                          placeholder="Enter description">{{ old('description') }}</textarea>

                @error('description')
                    <small class="text-danger">
                        {{ $message }}
                    </small>
                @enderror

            </div>


            <div class="form-group mb-3">

                <label for="file">
                    Upload PDF
                </label>

                <input type="file"
                       name="file"
                       id="file"
                       class="form-control"
                       accept="application/pdf">

                @error('file')
                    <small class="text-danger">
                        {{ $message }}
                    </small>
                @enderror

            </div>


            <button type="submit"
                    class="btn btn-primary">
                Upload PDF
            </button>


            <a href="{{ route('chart_uploads.index') }}"
               class="btn btn-secondary">
                Back
            </a>


        </form>

    </div>

</div>

@endsection