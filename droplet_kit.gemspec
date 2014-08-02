# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'droplet_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "droplet_kit"
  spec.version       = DropletKit::VERSION
  spec.authors       = ["Robert Ross"]
  spec.email         = ["rross@digitalocean.com"]
  spec.summary       = %q{Droplet Kit is the official Ruby library for Digital Ocean's API}
  spec.description   = %q{Droplet Kit is the official Ruby library for Digital Ocean's API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "resource_kit", '~> 0.0.1'
  spec.add_development_dependency "kartograph", '~> 0.0.1'
  spec.add_development_dependency "rspec", "~> 3.0.0"
end
