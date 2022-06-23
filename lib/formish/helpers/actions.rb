# frozen_string_literal: true

module Formish
  module Helpers
    module Actions
      def submit label = nil, options = {}
        action_tag label || 'Submit', options
      end

      def reset label = nil, options = {}
        action_tag label || 'Reset', options
      end

      def actions
      end

      private

      def action_tag label, options = {}
        if options[:as] == 'button'
          template.button_tag label
        end
      end
    end
  end
end
