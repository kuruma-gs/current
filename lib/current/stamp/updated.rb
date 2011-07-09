module Current
  module Stamp
    module Updated
      extend ActiveSupport::Concern
      module ClassMethods
        def updated_stamp(field,clazz,options={})
          raise Current::Error,'argument error. updated_stamp(field,clazz)\'s clazz must be Class' unless clazz.class==Class
          raise Current::Error,"#{clazz} must include Current::Document" unless clazz.include? Current::Document
          class_eval do
            belongs_to field, options.merge(:class_name=>clazz.to_s)
            set_callback :save, :before, "set_#{field}", :if => Proc.new { |doc|
              doc.new_record? || doc.changed?
            }
          end
          define_method "set_#{field}" do
            self.send("#{field}=", clazz.current) if !clazz.current
          end
        end
        def updated_stamps(field,clazz,options={})
          raise Current::Error,'argument error. updated_stamp(field,clazz)\'s clazz must be Class' unless clazz.class==Class
          raise Current::Error,"#{clazz} must include Current::Document" unless clazz.include? Current::Document
          class_eval do
            has_and_belongs_to_many field, options.merge(:class_name=>clazz.to_s)
            set_callback :save, :before, "set_#{field}", :if => Proc.new { |doc|
              doc.new_record? || doc.changed?
            }
          end
          define_method "set_#{field}" do
            self.send(field) << clazz.current if clazz.current
          end
        end
      end
    end
  end
end
