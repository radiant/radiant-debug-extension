# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-debug-extension/version"

Gem::Specification.new do |s|
  s.name        = "radiant-debug-extension"
  s.version     = RadiantDebugExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Radiant CMS Dev Team"]
  s.email       = ["radiant@radiantcms.org"]
  s.homepage    = "http://radiantcms.org/"
  s.summary     = %q{Debug Radiant CMS}
  s.description = %q{Adds debugging options for Radiant}

  ignores = if File.exist?(".gitignore")
    File.read(".gitignore").split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir["**/*"] - ignores
  s.test_files    = Dir["test/**/*","spec/**/*","features/**/*"] - ignores
  s.require_paths = ["lib"]
end
