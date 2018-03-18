# frozen_string_literal: true

module Rspec
  class ServiceObjectGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    argument :attributes, type: :array, default: [], banner: 'field field'

    def copy_service_object_file
      template 'service_object_spec.rb.tt', File.join('spec', 'services', class_path, "#{file_name}_spec.rb")
    end

    private

    def attributes_symbols
      attributes.map { |a| a.name.to_sym.inspect }
    end

    def attribute_names
      attributes.map(&:name)
    end
  end
end
