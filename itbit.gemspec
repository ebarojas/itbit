# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itbit/version'

Gem::Specification.new do |spec|
  spec.name          = "itbit"
  spec.version       = Itbit::VERSION
  spec.authors       = ["Nubis", "Eromirou"]
  spec.email         = ["nb@bitex.la", "tr@bitex.la"]
  spec.description   = %q{API client library for itbit.com. Fetch public market
                        data and build trading robots}
  spec.summary       = "API client library for itbit.com"
  spec.homepage      = "http://github.com/bitex-la/itbit"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "rest_client"

  spec.required_ruby_version = '>= 1.9.3'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-mocks"
  spec.add_development_dependency "timecop"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "shoulda-matchers"
end
