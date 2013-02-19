# -*- encoding: utf-8 -*-
require File.expand_path('../lib/xboxlive-wrapper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nícolas Iensen"]
  gem.email         = ["nicolas@engage.is"]
  gem.description   = %q{This Xbox Live wrapper allows you to get profiles, games, achievements and friends data}
  gem.summary       = %q{A Ruby wrapper for the xboxleaders.com API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "xboxlive-wrapper"
  gem.require_paths = ["lib"]
  gem.version       = Xboxlive::Wrapper::VERSION

  gem.add_runtime_dependency("faraday")
  gem.add_development_dependency("rspec")
end
