# frozen_string_literal: true

require_relative "lib/gem_with_c_extension/version"

Gem::Specification.new do |spec|
  spec.name = "gem_with_c_extension"
  spec.version = GemWithCExtension::VERSION
  spec.authors = ["Tilo Sloboda"]
  spec.email = ["tilo.sloboda@gmail.com"]

  spec.summary = "Example Gem with C-extension"
  spec.description = "this is an example how to create a Ruby Gem with a C-Extension"
  spec.homepage = "https://github.com/tilo/gem_with_c_extension"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/tilo/gem_with_c_extension/CHANGELOG.md"

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
  spec.extensions = ["ext/gem_with_c_extension/extconf.rb"]

  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "codecov"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
