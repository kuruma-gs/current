# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "current/version"

Gem::Specification.new do |s|
  s.name        = "current"
  s.version     = Current::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["kuruma3"]
  s.email       = ["kuruma@galileoscope.com"]
  s.homepage    = %q{http://github.com/#{github_username}/#{project_name}}
  s.summary     = "use current object in models"
  s.description = "use current object in models"

  #s.required_rubygems_version = ">= 1.3.6"
  #s.add_dependency("rails", ">= 3.0.10")
  #s.add_dependency('rack',  '~> 1.3.2')

  s.files        = Dir.glob("lib/**/*") + %w(README.rdoc Rakefile)
  s.require_path = 'lib'
end
