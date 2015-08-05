# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secure_trading/version'

Gem::Specification.new do |spec|
  spec.name          = 'secure_trading'
  spec.version       = SecureTrading::VERSION
  spec.authors       = ['Bitgamelabs']
  spec.email         = ['']

  spec.summary       = 'Ruby library for securetrading.com API integration.'
  spec.description   = 'Ruby library for securetrading.com API integration.'
  spec.homepage      = 'https://github.com/bitgamelabs/secure_trading'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4"
end
