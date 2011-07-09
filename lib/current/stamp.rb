require "current/stamp/updated"
require "current/stamp/created"
module Current
  module Stamp
    extend ActiveSupport::Concern
    include Created
    include Updated
    include Deleted
  end
end
