$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "birthday_age/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "birthday_age"
  s.version     = BirthdayAge::VERSION
  s.authors     = ["ArthurZaharov"]
  s.email       = ["arthur.zaharov@flatstack.com"]
  s.homepage    = "http://example.com"
  s.summary     = "User age calculator."
  s.description = "Calculates users age from birthday."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
end
