# frozen_string_literal: true

$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "form_select/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "form-select"
  s.version     = FormSelect::VERSION
  s.authors     = ["Jason Lee"]
  s.email       = ["huacnlee@gmail.com"]
  s.homepage    = "https://github.com/rails-engine/form-select"
  s.summary     = "Helper of form select options"
  s.description = "Helper of form select options."
  s.license     = "MIT"
  s.require_paths = ["lib"]

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.2"

  s.add_development_dependency "mysql2"
end
