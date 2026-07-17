<div class="row">
    @if($errors->count())
    <div class="alert alert-warning col-12" role="alert">
      <span class='form_error'>{!! $errors->first('fin_year_id') !!}</span> <br/>
      <span class='form_error'>{!! $errors->first('achievement_type_id') !!}</span> <br/>
      <span class='form_error'>{!! $errors->first('count') !!}</span> <br/>
      <span class='form_error'>{!! $errors->first('errors') !!}</span> <br/>
    </div>
    @endif
     <div class="form-group col-12 float-left">
      {!! Form::label('financial year', 'financial year *') !!}
      {!! Form::select('fin_year_id', $fin_years, null,['class' => 'form-control'] ) !!}
    </div>

    <div class="form-group col-12 float-left">
      {!! Form::label('Achievement Type', 'Achievement Type *') !!}
      {!! Form::select('achievement_type_id', $achievement_types, null,['class' => 'form-control'] ) !!}
    </div>
          
     <div class="form-group col-12">
       {!! Form::label('count', 'Count *') !!}
       {!! Form::number('count', null, ['id' => 'count', 'class' => 'form-control']) !!}
     </div>

     <div class="form-group col-12">
       <div class="row">
         <div class="form-group col-6 float-left">
           {!! Form::label('status', 'Status') !!}
           {!! Form::select('status', array('1' => 'Active','0'=>'Inactive'), null,['class' => 'form-control'] ) !!}
         </div>

         <div class="col-6 pt-4 " style="margin-top:5px">
           {!! Form::submit($submitButton, ['class' => 'btn btn-primary col-12']) !!}
         </div>
       </div>
     </div>
 </div>
