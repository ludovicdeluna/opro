require 'securerandom'

module Opro
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Opro initializer"
      class_option :orm

      def copy_initializer
        template "opro.rb", "config/initializers/opro.rb"
      end

      def run_other_generators
        generate "active_record:opro"
      end
    end
  end
end
