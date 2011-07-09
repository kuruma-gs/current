require "current/controller/helper"
require "current/controller/reset_current"
require "current/controller/set_current"
module Current
  module Controller
    extend ActiveSupport::Concern
    include SetCurrent
    include ResetCurrent
    include Helper

    module ClassMethods
      def controller_currents(*clazzs)
        set_currents(*clazzs)
        reset_currents(*clazzs)
        current_helpers(*clazzs)
      end
    end

  end
end
