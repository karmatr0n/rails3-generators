require 'generators/fabrication'

module Fabrication
  module Generators
    class ModelGenerator < Base
      argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"
      class_option :dir, :type => :string, :default => "test/fabricators", :desc => "The directory where the blueprints should go"
      class_option :extension, :type => :string, :default => "rb", :desc => "file extension name"
        
      def create_fabrication_file
        template 'fabricator.rb', File.join(options[:dir], "#{table_name}.#{options[:extension].to_s}")
      end
    end
  end
end
