# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'form_errors/version'

Gem::Specification.new do |spec|
  spec.name          = "form_errors"
  spec.version       = FormErrors::VERSION
  spec.authors       = ["John Otander"]
  spec.email         = ["johnotander@gmail.com"]
  spec.summary       = %q{Clean up form error reporting in Rails with a nice little view helper.}
  spec.description   = %q{Clean up form error reporting in Rails with a nice little view helper. <%= display_errors(@object) %>}
  spec.homepage      = "https://github.com/johnotander/form_errors"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
