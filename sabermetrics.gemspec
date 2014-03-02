# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sabermetrics/version'

Gem::Specification.new do |spec|
  spec.name          = "sabermetrics"
  spec.version       = Sabermetrics::VERSION
  spec.authors       = ["Mark Borcherding"]
  spec.email         = ["markborcherding@gmail.com"]
  spec.summary       = %q{A playground to learn about sabermetrics.}
  spec.description   = %q{A playground to learn about sabermetrics.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"
  spec.add_dependency "standalone_migrations"
  spec.add_dependency "rake"
  spec.add_dependency "progressbar"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "sqlite3"
end
