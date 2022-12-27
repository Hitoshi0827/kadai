# frozen_string_literal: true

require_relative "lib/str_convert_utils/version"

Gem::Specification.new do |spec|
  spec.name = "str_convert_utils"
  spec.version = StrConvertUtils::VERSION
  spec.authors = ["Hitoshi0827"]
  spec.email = ["hitojin0612@gmail.com"]

  spec.summary       = "string convert utilities"
  spec.description   = "string convert utilities (e.g. snake, camelize, etc.)"
  spec.homepage      = "https://github.com/Hitoshi0827/str_convert_utils"
  spec.required_ruby_version = ">= 2.6.0"

  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "thor" 
end
