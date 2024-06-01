# frozen_string_literal: true

require_relative "lib/switchcop/version"

Gem::Specification.new do |spec|
  spec.name = "switchcop"
  spec.version = Switchcop::VERSION
  spec.summary = "Switch Dreams' style guide for Ruby."
  spec.description = "Gem containing the rubocop.yml config for Switch Dreams` style guide for Ruby."

  spec.author = "Switch Dreams"
  spec.email = ["felipevaz444@gmail.com"]
  spec.homepage = "https://github.com/SwitchDreams/switchcop"

  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  spec.metadata["source_code_uri"] = "https://github.com/SwitchDreams/switchcop"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = ["rubocop.yml", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  spec.add_dependency("rubocop", "1.64.1")
  spec.add_dependency("rubocop-performance", "1.21.0")
  spec.add_dependency("rubocop-rails", "2.25.0")
  spec.add_dependency("rubocop-rspec", "2.29.2")
  spec.add_dependency("rubocop-shopify", "2.15.1")
end
