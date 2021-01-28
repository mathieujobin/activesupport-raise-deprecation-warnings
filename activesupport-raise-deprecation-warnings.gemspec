require_relative 'lib/activesupport/raise/deprecation/warnings/version'

Gem::Specification.new do |spec|
  spec.name          = "activesupport-raise-deprecation-warnings"
  spec.version       = Activesupport::Raise::Deprecation::Warnings::VERSION
  spec.authors       = ["Mathieu Jobin"]
  spec.email         = ["majobin@mdsol.com"]

  spec.summary       = %q{Raise all deprecation warnings.}
  spec.description   = %q{this gem will monkey patch active support so deprecation warnings raise an error instead.}
  spec.homepage      = "https://github.com/mjobin-mdsol/activesupport-raise-deprecation-warnings"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mjobin-mdsol/activesupport-raise-deprecation-warnings"
  spec.metadata["changelog_uri"] = "https://github.com/mjobin-mdsol/activesupport-raise-deprecation-warnings/commits/master"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activesupport'
end
