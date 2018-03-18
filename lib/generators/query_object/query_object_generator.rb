# frozen_string_literal: true

class QueryObjectGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def copy_query_object_file
    template 'query_object.rb.tt', File.join('app', 'queries', class_path, "#{file_name}_query.rb")
  end

  hook_for :test_framework
end
