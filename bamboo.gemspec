$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bamboo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bamboo"
  s.version     = Bamboo::VERSION
  s.authors     = ["Ole Henrik Skogstrøm"]
  s.email       = ["ole.henrik@hyper.no"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Bamboo."
  s.description = "TODO: Description of Bamboo."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'generator_spec'
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
end
