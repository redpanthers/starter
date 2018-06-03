# frozen_string_literal: true

class QueryGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def copy_query_file
    template 'query.rb.tt', File.join('app', 'queries', class_path, "#{file_name}_query.rb")
  end

  hook_for :test_framework
end
