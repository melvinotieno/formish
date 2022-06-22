module Formish
  module Components
    module Form
      def formish(model: nil, scope: nil, url: nil, format: nil, **options, &block)
        options[:builder] ||= Formish::FormBuilder

        with_formish_field_error_proc do
          form_with(model: model, scope: scope, url: url, format: format, **options, &block)
        end
      end

      private

      def with_formish_field_error_proc
        default_field_error_proc = ::ActionView::Base.field_error_proc

        begin
          ::ActionView::Base.field_error_proc = Formish.field_error_proc
          yield
        ensure
          ::ActionView::Base.field_error_proc = default_field_error_proc
        end
      end
    end
  end
end
