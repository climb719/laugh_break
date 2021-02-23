# frozen_string_literal: true

require_relative "lib/laugh_break/version"

Gem::Specification.new do |spec|
  spec.name          = "laugh_break"
  spec.version       = LaughBreak::VERSION
  spec.authors       = ["climb719"]
  spec.email         = ["mary.oldweiler@gmail.com"]

  spec.summary       = "Laughter and taking breaks, when paired together, can relieve stress, improve focus, and increase productivity." #TODO: Write a short summary, because RubyGems requires one."
  spec.description   = "Laughter is scientifically proven to relieve stress. This app was made especially for programmers and/or those who are in front of a computer for most of the day. Taking breaks from work is also proven to improve focus and productivity. So take a Laugh Break, reap the benefits, and walk away with new jokes to tell."
   #TODO: Write a longer description or delete this line."
  spec.homepage      = "https://github.com/climb719/laugh_break" #TODO: Put your gem's website or public repo URL here
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/climb719/laugh_break" # TODO: Put your gem's public repo URL here
  spec.metadata["changelog_uri"] = "https://github.com/climb719/laugh_break/actions" #TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem. ??When to use development? 
  spec.add_development_dependency "bundler"
  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "pry"
  spec.add_dependency "httparty"


  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
