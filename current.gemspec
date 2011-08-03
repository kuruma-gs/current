# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{current}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["kuruma3"]
  s.date = %q{2011-07-10}
  s.description = %q{you use current_user etc. in views & controllers & models}
  s.email = ["kuruma@galileoscope.com"]
  s.extra_rdoc_files = ["History.txt", "PostInstall.txt"]
  s.files = ["History.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/current.rb", "lib/current/controller.rb", "lib/current/controller/helper.rb", "lib/current/controller/reset_current.rb", "lib/current/controller/set_current.rb", "lib/current/document.rb", "lib/current/stamp.rb", "lib/current/stamp/created.rb", "lib/current/stamp/updated.rb", "lib/current/stamp/deleted.rb", "script/console", "script/destroy", "script/generate"]
  s.homepage = %q{http://github.com/#{github_username}/#{project_name}}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{current}
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{you use current_user etc. in views & controllers & models}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    #  s.add_development_dependency(%q<hoe>, [">= 2.9.1"])
    else
    #  s.add_dependency(%q<hoe>, [">= 2.9.1"])
    end
  else
  #  s.add_dependency(%q<hoe>, [">= 2.9.1"])
  end
end
