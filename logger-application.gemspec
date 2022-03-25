# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logger/application/version'

Gem::Specification.new do |spec|
  spec.name          = "logger-application"
  spec.version       = Logger::Application::VERSION
  spec.authors       = ["SHIBATA Hiroshi"]
  spec.email         = ["hsbt@ruby-lang.org"]
  spec.summary       = %q{Add logging support to your application.}
  spec.description   = %q{Add logging support to your application.}
  spec.homepage      = "https://github.com/ruby/logger-application"
  spec.license       = "2-clause BSDL"
  spec.required_ruby_version = "< 3.1"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
