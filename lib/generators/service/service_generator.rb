# frozen_string_literal: true

class ServiceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  argument :attributes, type: :array, default: [], banner: 'field field'

  def copy_service_file
    template 'service.rb.tt', File.join('app', 'services', class_path, "#{file_name}_service.rb")
  end

  hook_for :test_framework

  private

  def attributes_symbols
    attributes.map { |a| a.name.to_sym.inspect }
  end

  def attribute_names
    attributes.map(&:name)
  end
end
