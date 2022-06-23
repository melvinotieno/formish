# frozen_string_literal: true

require "formish/version"
require "formish/railtie"
require "formish/action_view_extensions/form"

module Formish
  extend ActiveSupport::Autoload

  autoload :Components

  eager_autoload do
    autoload :FormBuilder
  end

  @@configured = false

  # Check if Formish is configured
  def self.configured?
    @@configured
  end

  # Setup Formish
  def self.setup
    @@configured = true
    yield self
  end

  ## CONFIGURATION OPTIONS

  mattr_accessor :field_error_proc
  @@field_error_proc = proc do |html_tag, instance_tag|
    html_tag
  end
end
