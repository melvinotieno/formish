# frozen_string_literal: true

module Formish
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      class_option :bootstrap, type: :boolean, desc: 'Use Bootstrap with Formish'

      class_option :bulma, type: :boolean, desc: 'Use Bulma with Formish'

      class_option :foundation, type: :boolean, desc: 'Use Foundation with Formish'

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
