module Current
  module Controller
    module Helper
      extend ActiveSupport::Concern

      module ClassMethods
        def current_helpers(*clazzs)
          class_eval do
            clazzs.each do |clazz|
              method_name = "current_#{clazz.to_s.underscore}"
              unless instance_methods.include? method_name.to_sym
                define_method method_name.to_sym do
                  clazz.current
                end
                ActiveSupport.on_load(:action_controller) do
                  helper_method method_name.to_sym
                end
              end
            end
          end

        end
      end

    end
  end
end
