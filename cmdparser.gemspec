# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cmdparser/version'

Gem::Specification.new do |spec|
  spec.name          = "cmdparser"
  spec.version       = Cmdparser::VERSION
  spec.authors       = ["mocchi"]
  spec.email         = ["bloody.cider+gem@gmail.com"]
  spec.summary       = %q{cmdparser likes optparser}
  spec.description   = %q{ruby's command provider}
  spec.homepage      = "http://mocchit.hatenablog.com"
  spec.license       = "GPLv3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
