# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "active_record_openid_store/version"

Gem::Specification.new do |s|
  s.name        = "active_record_openid_store"
  s.version     = ActiveRecordOpenidStore::VERSION
  s.authors     = ["Alan Skorkin"]
  s.email       = ["alan@skorks.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "active_record_openid_store"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
