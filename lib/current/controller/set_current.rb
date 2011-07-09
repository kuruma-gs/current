module Current
  module Controller
    module SetCurrent
      extend ActiveSupport::Concern
      module ClassMethods
        def set_currents(*clazzs)
          clazzs.each do |clazz|
            raise Current::Error,"#{clazz} must include Current::Document" unless clazz.include? Current::Document
            class_eval do
              before_filter "set_current_#{clazz.to_s.underscore}"   
            end
          end
          clazzs.each do |clazz|
            raise Current::Error,"#{clazz} must include Current::Document" unless clazz.include? Current::Document
            define_method "set_current_#{clazz.to_s.underscore}" do
              raise Current::Error,"undefined method set_current_#{clazz.to_s.underscore}"
            end
          end
        end
      end
    end
  end
end
