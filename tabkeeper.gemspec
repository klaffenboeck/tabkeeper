# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tabkeeper/version'

Gem::Specification.new do |spec|
  spec.name          = "tabkeeper"
  spec.version       = Tabkeeper::VERSION
  spec.authors       = ["Manfred Klaffenboeck"]
  spec.email         = ["fred_klaf@gmx.net"]
  spec.description   = %q{'Hey Barkeeper, could you keep my tabs for me?'}
  spec.summary       = %q{A gem that takes care of active tabs for you}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "virtus"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
