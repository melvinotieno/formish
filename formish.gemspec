require_relative "lib/formish/version"

Gem::Specification.new do |spec|
  spec.name        = "formish"
  spec.version     = Formish::VERSION
  spec.authors     = ["Melvin Otieno"]
  spec.email       = ["o.melvinotieno@gmail.com"]
  spec.homepage    = "https://github.com/melvinotieno/formish"
  spec.summary     = "Forms"
  spec.description = "Forms"
  spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/melvinotieno/formish"
  spec.metadata["changelog_uri"] = "https://github.com/melvinotieno/formish/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3"
end
