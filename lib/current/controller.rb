#require "rails"
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
      def currents(*clazzs)
        set_currents(*clazzs)
        reset_currents(*clazzs)
        current_helpers(*clazzs)
      end
      alias_method :controller_currents, :currents
    end

  end
end
