@extends('cms.application')

@section('content')

<div class="page-header">
  <div class="page-block">
    <div class="row align-items-center">
      <div class="col-md-7">
        <div class="page-header-title">
          <h5 class="m-b-10">Add New Centre</h5>
        </div>
      </div>
      <div class="col-md-5 text-right">
        <a href="{{ route('cms.centres.index') }}" class="btn btn-secondary">Back to List</a>
      </div>
    </div>
  </div>
</div>

<div class="main-body">
  <div class="page-wrapper">
    <div class="row">
      <div class="col-md-12">

        @if(session('status'))
          <div class="alert alert-success">{{ session('status') }}</div>
        @endif

        {!! Form::open(['route' => 'cms.centres.store']) !!}

          <div class="col-12 px-0 form-group">
            {!! Form::label('title', 'Centre Name') !!}
            {!! Form::textarea('title', null, ['class' => 'form-control', 'rows' => 2]) !!}
            @error('name') <span class="text-danger">{{ $message }}</span> @enderror
          </div>

          <div class="row">
            <div class="col-md-6">
              <div class="col-12 px-0 form-group">
                {!! Form::label('status', 'Status') !!}
                {!! Form::select('status', ['' => 'Choose status', 'publish' => 'Publish', 'draft' => 'Draft'], null, ['class' => 'form-control']) !!}
                @error('status') <span class="text-danger">{{ $message }}</span> @enderror
              </div>
            </div>

            <div class="col-md-6">
              <div class="col-12 px-0 form-group">
                {!! Form::label('pg_order', 'Ordering') !!}
                {!! Form::number('pg_order', null, ['class' => 'form-control']) !!}
                @error('pg_order') <span class="text-danger">{{ $message }}</span> @enderror
              </div>
            </div>
          </div>

          <div class="col-12 px-0 form-group">
            {!! Form::label('main_centre', 'Main Centre') !!}<br>
            {!! Form::checkbox('main_centre', 1, false) !!} Yes
          </div>

          <div class="col-12 px-0 form-group">
            {!! Form::label('contents', 'About Centre') !!}
            {!! Form::textarea('contents', null, ['id' => 'redactor_en', 'class' => 'form-control', 'rows' => 6]) !!}
                  {{-- {!! Form::textarea('content_en', null, ['id' => 'redactor_en', 'class' => 'form-control','rows'=>'3','cols'=>'80']) !!} --}}
            @error('contents') <span class="text-danger">{{ $message }}</span> @enderror
          </div>

          <div class="col-12 px-0 form-group">
            {!! Form::label('contacts', 'Contacts') !!}
            {{-- {!! Form::textarea('contacts', null, ['id' => 'redactor_en', 'class' => 'form-control', 'rows' => 6]) !!} --}}
            {!! Form::textarea('contacts', null, ['id' => 'redactor_sw', 'class' => 'form-control','rows'=>'3','cols'=>'80']) !!}
            @error('contacts') <span class="text-danger">{{ $message }}</span> @enderror
          </div>

          <div class="form-group text-right">
            {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
            <a href="{{ route('cms.centres.index') }}" class="btn btn-secondary">Cancel</a>
          </div>

        {!! Form::close() !!}

      </div>
    </div>
  </div>
</div>

@push('scripts')
<script>
  $(function () {
    $('#contents, #contacts').summernote({
      height: 300,
      toolbar: [
        ['style', ['style']],
        ['font', ['bold', 'italic', 'underline', 'clear']],
        ['fontsize', ['fontsize']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']],
        ['table', ['table']],
        ['insert', ['link', 'picture', 'video']],
        ['view', ['fullscreen', 'codeview', 'help']],
        ['misc', ['accordion']]
      ],
      styleTags: ['p', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6']
    });
  });
</script>
@endpush

@endsection
