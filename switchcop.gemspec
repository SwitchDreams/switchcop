# frozen_string_literal: true

require_relative "lib/switchcop/version"

Gem::Specification.new do |spec|
  spec.name = "switchcop"
  spec.version = Switchcop::VERSION
  spec.summary = "Switch Dreams' style guide for Ruby."
  spec.description = "Gem containing the rubocop.yml config for Switch Dreams` style guide for Ruby."

  spec.author = "Switch Dreams"
  spec.email = ["dreamsswitch@gmail.com"]
  spec.homepage = "https://github.com/SwitchDreams/switchcop"

  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  spec.metadata["source_code_uri"] = "https://github.com/SwitchDreams/switchcop"
  spec.metadata["default_lint_roller_plugin"] = "Switchcop::Plugin"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = ["rubocop.yml", "LICENSE.txt", "lib/switchcop.rb", "lib/switchcop/version.rb", "lib/switchcop/plugin.rb"]
  spec.require_paths = ["lib"]

  spec.add_dependency("lint_roller", "~> 1.1")
  spec.add_dependency("rubocop", "~> 1.92")
  spec.add_dependency("rubocop-factory_bot", "~> 2.28")
  spec.add_dependency("rubocop-performance", "~> 1.27")
  spec.add_dependency("rubocop-rails", "~> 2.38")
  spec.add_dependency("rubocop-rspec", "~> 3.10")
  spec.add_dependency("rubocop-rspec_rails", "~> 2.32")
  spec.add_dependency("rubocop-shopify", "~> 2.18")
end
