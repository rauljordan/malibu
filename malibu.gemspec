# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'malibu/version'

Gem::Specification.new do |spec|
  spec.name          = "malibu"
  spec.version       = Malibu::VERSION
  spec.authors       = ["Raul Jordan"]
  spec.email         = ["raulitojordan@gmail.com"]
  spec.summary       = %q{A Ruby optimized DDP Client for Meteor.js Applications}
  spec.description   = %q{Connect remotely and securely to Meteorjs apps through DDP 
                          and access server methods through websockets reactively}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  
  spec.add_runtime_dependency "faye-websocket"
  spec.add_runtime_dependency "json"

end
