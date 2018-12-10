# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'mobb-redis/version'

Gem::Specification.new do |s|
  s.name        = 'mobb-redis'
  s.version     = Mobb::Redis::VERSION
  s.authors     = ['kinoppyd', 'Luca Guidi']
  s.email       = ['whoisdissolvedgirl+github@gmail.com']
  s.homepage    = 'https://github.com/kinoppyd/mobb-redis'
  s.summary     = %q{Redis store for Mobb}
  s.description = %q{Redis store for Mobb}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'redis-store', '>= 1.1', '< 2'
  s.add_dependency 'mobb', '>= 0'

  s.add_development_dependency 'rake',     '~> 10'
  s.add_development_dependency 'bundler',  '~> 1.3'
  s.add_development_dependency 'mocha',    '~> 0.14.0'
  s.add_development_dependency 'minitest', '~> 5'
  s.add_development_dependency 'redis-store-testing'
end
