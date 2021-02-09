$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_icons_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_icons_rails"
  s.version     = BootstrapIconsRails::VERSION
  s.authors     = ["NILID"]
  s.email       = ["info@dmilin.com"]
  s.homepage    = "https://github.com/NILID/bootstrap_icons_rails"
  s.summary     = "an asset gemification of the bootstrap icon font library"
  s.description = "bootstrap_icons_rails provides Bootstrap Icons support."
  s.license     = "MIT"

  s.files = Dir["{app,config,bin,lib,spec}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "railties", ">= 4.2"

  s.add_development_dependency "activesupport", ">= 4.2"
  s.add_development_dependency "sass-rails"
  s.required_ruby_version = ">= 2.0.0"
end
