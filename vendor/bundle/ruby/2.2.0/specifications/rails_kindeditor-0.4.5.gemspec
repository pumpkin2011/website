# -*- encoding: utf-8 -*-
# stub: rails_kindeditor 0.4.5 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_kindeditor"
  s.version = "0.4.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Macrow"]
  s.date = "2014-01-08"
  s.description = "rails_kindeditor will helps your rails app integrate with kindeditor, including images and files uploading."
  s.email = "Macrow_wh@163.com"
  s.homepage = "http://github.com/Macrow"
  s.licenses = ["MIT"]
  s.rubyforge_project = "rails_kindeditor"
  s.rubygems_version = "2.4.8"
  s.summary = "Kindeditor for Ruby on Rails"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<carrierwave>, [">= 0"])
      s.add_runtime_dependency(%q<mini_magick>, [">= 0"])
    else
      s.add_dependency(%q<carrierwave>, [">= 0"])
      s.add_dependency(%q<mini_magick>, [">= 0"])
    end
  else
    s.add_dependency(%q<carrierwave>, [">= 0"])
    s.add_dependency(%q<mini_magick>, [">= 0"])
  end
end
