# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todo_samp/version'

Gem::Specification.new do |spec|
  spec.name          = "todo_samp"
  spec.version       = TodoSamp::VERSION
  spec.authors       = ["sekaiya"]
  spec.email         = ["sekai.kobayashi@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"			, "~> 3.2.0"
  spec.add_dependency "sqlite3"					,"~> 1.3.0"
  spec.add_development_dependency "bundler"		, "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "yard"		, "~> 0.8"
  spec.add_development_dependency "redcarpet"	, "~> 2.2"
end