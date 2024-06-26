# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dwolla_swagger/swagger/version"

Gem::Specification.new do |s|
  s.name        = "dwolla_swagger"
  s.version     = DwollaSwagger::Swagger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Zeke Sikelianos", "Tony Tam", "David Stancu"]
  s.email       = ["zeke@wordnik.com", "fehguy@gmail.com", "dstancu@nyu.edu"]
  s.homepage    = "http://developers.dwolla.com"
  s.summary     = %q{Dwolla API V2 SDK}
  s.description = %q{Dwolla API V2 Swagger SDK wrapper.}
  s.license     = "Apache-2.0"

  s.add_runtime_dependency 'faraday', '>= 2.0', '< 3'
  s.add_runtime_dependency 'addressable', '~> 2.2', '>= 2.2.4'
  s.add_runtime_dependency 'json', '>= 2.3.0'

  s.add_development_dependency "bundler", "~> 2.4"
  s.add_development_dependency "rake", "~> 12.3"
  s.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'
  s.add_development_dependency 'vcr', '~> 2.9', '>= 2.9.3'
  s.add_development_dependency 'webmock', '~> 1.6', '>= 1.6.2'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.10'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
