# frozen_string_literal: true

module Formish
  class Railtie < ::Rails::Railtie
    config.eager_load_namespaces << Formish

    config.after_initialize do
      unless Formish.configured?
        warn '[Formish] Formish is not configured. Run `rails generate formish:install` ' \
        'to generate a configuration file else Formish will use the default set values.'
      end
    end
  end
end
