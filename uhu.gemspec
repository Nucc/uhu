# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uhu/version'

Gem::Specification.new do |spec|
  spec.name          = "uhu"
  spec.version       = Uhu::VERSION
  spec.authors       = ["Laszlo Papp"]
  spec.email         = ["nucc@bteam.hu"]
  spec.summary       = %q{Formatting logs from multiple sources}
  spec.description   = %q{You can set multiple input files and format logs with filters.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "awesome_print"
  spec.add_dependency "ruby-terminfo"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
