module Current
  module Controller
    module ResetCurrent
      extend ActiveSupport::Concern
      module ClassMethods
        def reset_currents(*clazzs)
          clazzs.each do |clazz|
            raise Current::Error,"#{clazz} must include Current::Document" unless clazz.include? Current::Document
            class_eval do
              after_filter "reset_current_#{clazz.to_s.underscore}"
            end
          end
          clazzs.each do |clazz|
            raise Current::Error,"#{clazz} must include Current::Document" unless clazz.include? Current::Document
            define_method "reset_current_#{clazz.to_s.underscore}" do
              clazz.current = nil  
            end
          end
        end
      end
    end
  end
end
