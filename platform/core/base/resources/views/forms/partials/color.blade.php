<div class="input-group color-picker" data-color="{{ $value ?? '#333' }}">
    {!! Form::text($name, $value ?? '#333', array_merge(['class' => 'form-control'], $attributes)) !!}
    <span class="input-group-text">
    <span class="input-group-text colorpicker-input-addon"><i></i></span>
  </span>
</div>
