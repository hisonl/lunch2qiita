# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lunch2qiita/version'

Gem::Specification.new do |spec|
  spec.name          = "lunch2qiita"
  spec.version       = Lunch2qiita::VERSION
  spec.authors       = ["hisonl"]
  spec.email         = ["hisonlex@gmail.com"]
  spec.summary       = %q{Lunch information to qiita.}
  spec.description   = %q{Lunch2qiita is a easy uploader for lunch information to qiita.}
  spec.homepage      = "https://github.com/hisonl/lunch2qiita"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "qiita"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
