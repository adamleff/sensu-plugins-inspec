# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "date"
require_relative "lib/sensu-plugins-inspec"

Gem::Specification.new do |spec|
  spec.name          = "sensu-plugins-inspec"
  spec.platform      = Gem::Platform::RUBY
  spec.version       = SensuPluginsInspec::Version::VER_STRING
  spec.date          = Date.today.to_s
  spec.license       = "Apache-2.0"
  spec.authors       = ["Adam Leff"]
  spec.email         = ["adam@leff.co"]

  spec.summary       = %q{Sensu Plugin for running InSpec profiles}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/adamleff/sensu-plugins-inspec"

  spec.files         = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  spec.executables   = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sensu-plugin", "~> 1.2"
  spec.add_dependency "inspec",       "~> 1.25"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake",    "~> 10.0"
  spec.add_development_dependency "rspec",   "~> 3.0"
end
