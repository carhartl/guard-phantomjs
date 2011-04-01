# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/phantomjs/version"

Gem::Specification.new do |s|
  s.name        = "guard-phantomjs"
  s.version     = Guard::PhantomJSVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Klaus Hartl"]
  s.email       = ["klaus.hartl@gmail.com"]
  s.homepage    = "http://github.com/carhartl/guard-phantomjs"
  s.summary     = "Guard gem for PhantomJS"
  s.description = "PhantomJS guard allows to automatically run PhantomJS (headless, WebKit-based browser)."

  s.rubyforge_project = "guard-phantomjs"

  s.add_dependency "guard", ">= 0.3"

  s.add_development_dependency "bundler", "~> 1.0.0"
  s.add_development_dependency "rspec", "~> 2.3.0"
  s.add_development_dependency "guard-rspec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
