@extends('cms.application')

@section('title')
Edit Chart Upload
@endsection

@section('content')

<div class="card">

    <div class="card-header">
        <h4>Edit Chart PDF</h4>
    </div>

    <div class="card-body">

        <form action="{{ route('chart_uploads.update', $upload->id) }}"
              method="POST"
              enctype="multipart/form-data">

            @csrf
            @method('PUT')


            <div class="form-group mb-3">

                <label for="title">
                    Title
                </label>

                <input type="text"
                       name="title"
                       id="title"
                       class="form-control"
                       value="{{ old('title', $upload->title) }}">

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
                          rows="4">{{ old('description', $upload->description) }}</textarea>

                @error('description')
                    <small class="text-danger">
                        {{ $message }}
                    </small>
                @enderror

            </div>


            <div class="form-group mb-3">

    <label>
        Current PDF
    </label>

    <br>

    @if($upload->file)

        <a href="{{ asset($upload->file) }}"
           target="_blank"
           class="btn btn-info btn-sm">
            View Current PDF
        </a>

    @else

        <span class="text-danger">
            No PDF uploaded
        </span>

    @endif

</div>


            <div class="form-group mb-3">

                <label for="file">
                    Replace PDF (optional)
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
                Update PDF
            </button>


            <a href="{{ route('chart_uploads.index') }}"
               class="btn btn-secondary">
                Back
            </a>


        </form>

    </div>

</div>

@endsection