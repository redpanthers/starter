# frozen_string_literal: true

class FormObjectGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :attributes, type: :array, default: [], banner: 'field field'

  def copy_form_object_file
    template 'form_object.rb.tt', File.join('app', 'forms', class_path, "#{file_name}_form.rb")
  end

  hook_for :test_framework

  private

  def attribute_symbols
    attributes.map { |a| a.name.to_sym.inspect }
  end

  def attribute_names
    attributes.map(&:name)
  end
end
