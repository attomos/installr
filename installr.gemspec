# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

require 'installr/version'

Gem::Specification.new do |s|
  s.name          = 'installr'
  s.license       = 'MIT'
  s.authors       = ['Nattaphoom Ch.']
  s.email         = 'attomos@gmail.com'
  s.homepage      = 'http://attomos.github.io/installr'
  s.version       = Installr::VERSION
  s.summary       = 'Installr API gem'
  s.description   = 'An API Wrapper for Installr (http://installrapp.com/)'

  s.add_dependency 'commander', '~> 4.1.5'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'

  s.files         = Dir['./**/*']
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
