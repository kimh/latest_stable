# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'latest_stable/version'

Gem::Specification.new do |spec|
  spec.name          = 'latest_stable'
  spec.version       = LatestStable::VERSION
  spec.authors       = ['Jakob Class', 'Olek Janiszewski', 'Harald Wartig']
  spec.email         = 'info@lateststable.io'

  spec.summary       = 'LatestStable makes it dead simple to stay up to date with the upstream changes of your gem dependencies.'
  spec.homepage      = 'http://www.lateststable.io'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'pry'
end
