# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "current"

Gem::Specification.new do |s|
  s.name        = "current"
  s.version     = Current::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["kuruma3"]
  s.email       = ["kuruma@galileoscope.com"]
  s.homepage    = %q{http://github.com/#{github_username}/#{project_name}}

  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency("rails", [">= 3.1.0.rc5"])

  s.files        = Dir.glob("lib/**/*") + %w(README.rdoc Rakefile)
  s.require_path = 'lib'
end
