$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require "active_support"
require File.join(File.dirname(__FILE__),'current/controller.rb')
require File.join(File.dirname(__FILE__),'current/document.rb')
require File.join(File.dirname(__FILE__),'current/stamp.rb')


class Current::Error < StandardError; end

module Current
  VERSION = '0.0.3'
end
