# frozen_string_literal: true

module Rspec
  class QueryGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('templates', __dir__)

    def copy_query_file
      template 'query_spec.rb.tt', File.join('spec', 'queries', class_path, "#{file_name}_query_spec.rb")
    end

  end
end
