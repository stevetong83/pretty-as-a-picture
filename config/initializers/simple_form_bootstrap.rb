# Use this setup block to configure all options available in SimpleForm.
inputs = %w[
  CollectionSelectInput
  DateTimeInput
  FileInput
  GroupedCollectionSelectInput
  NumericInput
  PasswordInput
  RangeInput
  StringInput
  TextInput
]

inputs.each do |input_type|
  "SimpleForm::Inputs::#{input_type}".constantize.class_eval do
    alias_method :__input_html_classes, :input_html_classes
    define_method(:input_html_classes) do
      __input_html_classes.push('form-control')
    end
  end
end

SimpleForm.setup do |config|
  config.wrappers :bootstrap, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.wrapper tag: 'div' do |prepend|
      prepend.use :input
    end
    b.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    b.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
  end


  config.wrappers :form_horizontal, tag: 'div', class: 'form-horizontal', error_class: 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'div', class: 'form-group' do |input|
      input.wrapper label: 'label', class: 'col-sm-2 control-label' do |i|
        i.use :label
      end
      input.wrapper tag: 'div', class: 'col-sm-10' do |prepend|
         prepend.use :input, class: 'form-control'
      end
      input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      input.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
    end
  end

  config.default_wrapper = :bootstrap
end
