# frozen_string_literal: true

module Formish
  class FormBuilder < ActionView::Helpers::FormBuilder
    include Formish::Helpers::Actions
    
    def initialize(object_name, object, template, options)
      super
    end
  end
end
