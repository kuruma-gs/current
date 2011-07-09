module Current
  module Document
    extend ActiveSupport::Concern

    module ClassMethods
      def current=(object)
        Thread.current["#{self.to_s.downcase}_#{self.object_id}_current"] = object
      end

      def current
        Thread.current["#{self.to_s.downcase}_#{self.object_id}_current"]
      end

      def reset_current
        Thread.current["#{self.to_s.downcase}_#{self.object_id}_current"] = nil
      end
    end

  end
end
