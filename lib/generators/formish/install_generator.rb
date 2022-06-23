# frozen_string_literal: true

module Formish
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copies Formish initializer to config/initializers'

      source_root File.expand_path('../templates', __FILE__)

      class_option :bootstrap, type: :boolean, desc: 'Add Bootstrap to Formish'

      def info
        return if options.bootstrap

        puts 'Formish supports Bootstrap 5. If you want to use it, rerun this generator ' \
        'with --bootstrap option'
      end

      def copy_initializer
        template 'config/initializers/formish.rb'
      end
    end
  end
end
