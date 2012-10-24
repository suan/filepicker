# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'filepicker/version'

Gem::Specification.new do |gem|
  gem.name          = "filepicker"
  gem.version       = Filepicker::VERSION
  gem.authors       = ["Suan-Aik Yeo"]
  gem.email         = ["yeosuanaik@gmail.com"]
  gem.description   = %q{Ruby client to the filepicker.io API}
  gem.summary       = %q{Ruby client to the filepicker.io API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
