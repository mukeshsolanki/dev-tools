# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devtools/version'

Gem::Specification.new do |spec|
  spec.name          = "devtools"
  spec.version       = Devtools::VERSION
  spec.authors       = ["Mukesh"]
  spec.email         = ["themukeshsolanki@gmail.com"]

  spec.summary       = "A gem that removes the hassel of setting up your machine evertime you change to a new development device"
  spec.description   = "DevTools is simple and easy to use it lets you setup your development enviroment with easy."
  spec.homepage      = "https://github.com/mukeshsolanki/devtools"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["devtools"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.5.1"
end
