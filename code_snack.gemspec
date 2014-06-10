# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'code_snack/version'

Gem::Specification.new do |spec|
  spec.name          = "code_snack"
  spec.version       = CodeSnack::VERSION
  spec.authors       = ["Melanie Archer"]
  spec.email         = ["job@twobanjos.com"]
  spec.summary       = %q{Retrieves the source for a randomly chosen gem from those you have installed}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'json'
  spec.add_runtime_dependency 'httparty'
  spec.add_dependency 'qwandry'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-nc'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-remote'
  spec.add_development_dependency 'pry-nav'
end
