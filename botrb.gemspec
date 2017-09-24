# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'botrb/version'

Gem::Specification.new do |spec|
  spec.name          = "botrb"
  spec.version       = Botrb::VERSION
  spec.authors       = ["James McCann"]
  spec.email         = ["jmccnz@gmail.com"]

  spec.summary       = %q{summary}
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir['lib/**/*']
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "minitest", "~> 5.8"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack"
  spec.add_development_dependency "shotgun"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "byebug"

  spec.add_dependency "dry-configurable"
  spec.add_dependency "dry-struct"
end
