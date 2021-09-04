# frozen_string_literal: true

require_relative "lib/encoding_iroha/version"

Gem::Specification.new do |spec|
  spec.name          = "encoding_iroha"
  spec.version       = EncodingIroha::VERSION
  spec.authors       = ["ima1zumi"]
  spec.email         = ["mariimaizumi5@gmail.com"]

  spec.summary       = "sample gem to add self-made encoding"
  spec.description   = "sample gem to add self-made encoding"
  spec.homepage      = "https://github.com/ima1zumi/encoding_iroha"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/encoding_iroha/extconf.rb"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
