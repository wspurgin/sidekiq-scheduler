$:.push File.expand_path('../lib', __FILE__)

require 'sidekiq-scheduler/version'

Gem::Specification.new do |s|
  s.name        = 'sidekiq-scheduler'
  s.version     = SidekiqScheduler::VERSION
  s.authors     = ['Morton Jonuschat', 'Moove-it', 'Marcelo Lauxen']
  s.email       = ['sidekiq-scheduler@moove-it.com', 'marcelolauxen16@gmail.com']
  s.license     = 'MIT'
  s.homepage    = 'https://moove-it.github.io/sidekiq-scheduler/'
  s.summary     = 'Light weight job scheduling extension for Sidekiq'
  s.description = 'Light weight job scheduling extension for Sidekiq that adds support for queueing jobs in a recurring way.'

  s.files       = Dir['{lib,web}/**/*'] + %w[MIT-LICENSE Rakefile README.md]

  s.add_dependency 'sidekiq',         '>= 3'
  s.add_dependency 'redis',           '>= 3', '< 5'
  s.add_dependency 'rufus-scheduler', '~> 3.2'
  s.add_dependency 'tilt',            '>= 1.4.0'
  s.add_dependency 'thwait'
  s.add_dependency 'e2mmap'

  s.add_development_dependency 'rake',                    '~> 10.0'
  s.add_development_dependency 'timecop',                 '~> 0'
  s.add_development_dependency 'mocha',                   '~> 0'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'mock_redis',              '~> 0.19.0'
  s.add_development_dependency 'simplecov',               '~> 0'
  s.add_development_dependency 'byebug'

  if RUBY_VERSION >= '2.2.2'
    s.add_development_dependency 'activejob'
  else
    s.add_development_dependency 'activejob', '< 5'
  end

  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'sinatra'
end
