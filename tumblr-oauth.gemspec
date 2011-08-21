# encoding: utf-8
require File.expand_path('../lib/tumblr-oauth/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'hashie', '~> 1.0.0'
  gem.add_dependency 'faraday', '~> 0.7.4'
  gem.add_dependency 'faraday_middleware', '~> 0.7.0'
  gem.add_dependency 'multi_json', '~> 1.0.0'
  gem.add_dependency 'simple_oauth', '~> 0.1.5'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rspec', '~> 2.3.0'
  gem.authors = ["Ildar Shaynurov"]
  gem.summary = %Q{Tumblr library with OAuth support}
  gem.description = %q{A Ruby wrapper for Tumblr AOuth API}
  gem.email = "shaynurov@gmail.com"
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'https://github.com/shir/tumblr-oauth'
  gem.name = 'tumblr-oauth'
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = TumblrOAuth::VERSION.dup
end