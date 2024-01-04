# frozen_string_literal: true

require_relative "lib/skyrim_utils/version"

Gem::Specification.new do |spec|
  spec.name = "skyrim_utils"
  spec.version = SkyrimUtils::VERSION
  spec.authors = ["David Shaffer"]
  spec.email = ["dave.shaffer@gmail.com"]

  spec.summary = "A gem for decoding Skyrim save file names"
  # spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = "https://github.com/flanger001/skyrim_utils"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 13.1"
  spec.add_development_dependency "minitest", "~> 5.20"
end