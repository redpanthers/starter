# frozen_string_literal: true
module Rspec
class QueryObjectGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def copy_query_object_file
    template 'query_object_spec.rb.tt', File.join('spec', 'queries', class_path, "#{file_name}_query_spec.rb")
  end

end
end
