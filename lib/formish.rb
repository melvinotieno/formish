# frozen_string_literal: true

require "formish/version"
require "formish/railtie"
require "formish/action_view_extensions/form"

module Formish
  extend ActiveSupport::Autoload

  autoload :Helpers

  eager_autoload do
    autoload :FormBuilder
  end

  ## Setup Formish

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

  ## FRAMEWORK SETUP

  @@framework = :none

  def self.framework framework
    @@framework = framework
  end

  ## CONFIGURATION OPTIONS

  mattr_accessor :field_error_proc
  @@field_error_proc = proc do |html_tag, instance_tag|
    html_tag
  end
end
