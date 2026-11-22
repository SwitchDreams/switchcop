# frozen_string_literal: true

require "lint_roller"

module Switchcop
  # Loads Switch Dreams' RuboCop configuration when switchcop is used as a
  # plugin (`plugins: [switchcop]`). The `inherit_gem` entry point keeps
  # working independently of this class.
  class Plugin < LintRoller::Plugin
    def about
      LintRoller::About.new(
        name: "switchcop",
        version: Switchcop::VERSION,
        homepage: "https://github.com/SwitchDreams/switchcop",
        description: "Switch Dreams' style guide for Ruby, as a RuboCop plugin.",
      )
    end

    def supported?(context)
      context.engine == :rubocop
    end

    def rules(context)
      LintRoller::Rules.new(
        type: :path,
        config_format: :rubocop,
        value: File.expand_path("../../rubocop.yml", __dir__),
      )
    end
  end
end
