# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Switchcop is a Ruby gem that encapsulates Switch Dreams' Ruby style guide as a RuboCop configuration. It extends `rubocop-shopify` with custom overrides tailored to Switch Dreams' conventions.

## Architecture

The gem consists of a single configuration file (`rubocop.yml`) that is loaded by consumer projects. The configuration:

1. Declares required RuboCop plugins: `rubocop-rails`, `rubocop-performance`, `rubocop-rspec`, `rubocop-factory_bot`, `rubocop-rspec_rails`
2. Inherits from `rubocop-shopify` base configuration
3. Applies Switch Dreams-specific overrides for style, layout, metrics, RSpec, Rails, and FactoryBot cops

The gemspec only includes `rubocop.yml` and `LICENSE.txt` in the packaged gem (see `spec.files`).

## Development Commands

```bash
# Install dependencies
bin/setup

# Interactive console for experimentation
bin/console

# Run RuboCop (default task)
bundle exec rake
# or
bundle exec rubocop

# Install gem locally for testing in other projects
bundle exec rake install

# Release new version
# 1. Update version in lib/switchcop/version.rb
# 2. Run:
bundle exec rake release
```

## Version Release Process

1. Bump the version in `lib/switchcop/version.rb`
2. Run `bundle exec rake release` (creates git tag, pushes commits/tags, pushes to rubygems.org)
