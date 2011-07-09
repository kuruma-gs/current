require "current/stamp/updated"
require "current/stamp/created"
require "current/stamp/deleted"
module Current
  module Stamp
    extend ActiveSupport::Concern
    include Created
    include Updated
    include Deleted
  end
end
