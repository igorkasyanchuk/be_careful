$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "be_careful/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "be_careful"
  s.version     = BeCareful::VERSION
  s.authors     = ["Igor Kasyanchuk"]
  s.email       = ["igorkasyanchuk@gmail.com"]
  s.homepage    = "http://github.com/igorkasyanchuk"
  s.summary     = "Summary of BeCareful."
  s.description = "Description of BeCareful."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
end
