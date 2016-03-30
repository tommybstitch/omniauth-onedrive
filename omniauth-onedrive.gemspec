# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/onedrive/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-onedrive"
  spec.version       = Omniauth::Onedrive::VERSION
  spec.authors       = ["VvanGemert"]
  spec.email         = ["vincent@floorplanner.com"]
  spec.summary       = "Omniauth OneDrive strategy"
  spec.description   = "This strategy will allow you to connect with OneDrive"
  spec.homepage      = "https://github.com/VvanGemert"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
