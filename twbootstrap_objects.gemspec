# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twbootstrap_objects/version'

Gem::Specification.new do |spec|
  spec.name          = "twbootstrap_objects"
  spec.version       = TwbootstrapObjects::VERSION
  spec.authors       = ["Andrew Kothmann"]
  spec.email         = ["andrew.kothmann@gmail.com"]
  spec.summary       = %q{Objects representing some of the more complex structures in the Twitter Bootstrap library.}
  spec.description   = %q{Objects representing some of the more complex structures in the Twitter Bootstrap library.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.2.0'
end
