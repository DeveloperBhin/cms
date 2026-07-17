@extends('cms.application')

@section('content')

<!-- [ breadcrumb ] start -->
<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-7">
                <div class="page-header-title">
                    <h5 class="m-b-10">Centres</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="javascript:">Site Contents</a></li>
                    <li class="breadcrumb-item"><a href="javascript:">Informations</a></li>
                    <li class="breadcrumb-item"><a href="javascript:">Centres</a></li>
                </ul>
            </div>

            <div class="col-md-5 text-right">
                <a href="{{ url('/cms/centres/create') }}" class="btn btn-primary">Create New Centre</a>
            </div>
        </div>
    </div>
</div>
<!-- [ breadcrumb ] end -->

<!-- [ Main Content ] start -->
<div class="main-body">
    <div class="page-wrapper">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header"><h5> Centres</h5></div>
                    <div class="card-body">

                        @if(session('status'))
                            <div class="alert alert-success">
                                {{ session('status') }}
                            </div>
                        @endif

                        @if($centres->count() == 0)
                            <div class="col-md-12">
                                <div class="alert alert-primary" role="alert">No any centre found</div>
                            </div>
                        @else

                            <table class="table table-striped no-pg-dataTable dataTable" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Main Centre</th>
                                        <th>Date</th>
                                        <th>Option</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @foreach($centres as $centre)
                                        <tr class="shadow-on-hover">
                                            <td>{{ $centre->pg_order }}</td>
                                            <td>
                                                <a href="{{ route('cms.centres.edit', $centre->id) }}" class="text-primary">{{ $centre->title }}</a>
  
                                            </td>

                                            <td class="text-center">
                                                {{ $centre->main == 1 ? 'YES' : 'NO' }}
                                            </td>

                                            <td>
                                                @if($centre->status == 'publish')
                                                    Published
                                                @elseif($centre->status == 'draft')
                                                    Drafted
                                                @elseif($centre->status == 'trash')
                                                    Trashed
                                                @endif
                                                <br>
                                                {{ \Carbon\Carbon::parse($centre->created_at)->format('d/m/Y') }}
                                            </td>

                                            <td>
                                                <a href="{{ route('cms.centres.edit', $centre->id) }}" class="label theme-bg2 text-white f-12">View & Edit</a>
                                                {!! link_to_route('cms.centres.destroy', 'Delete', [$centre->id], [
                                                    'data-method' => 'delete',
                                                    'data-confirm' => 'Are you sure?',
                                                    'class' => 'label theme-b bg-danger text-white f-12'
                                                ]) !!}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>

                        @endif

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- [ Main Content ] end -->

@stop
