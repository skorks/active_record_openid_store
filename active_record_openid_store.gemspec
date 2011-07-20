# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "active_record_openid_store/version"

Gem::Specification.new do |s|
  s.name        = "active_record_openid_store"
  s.version     = ActiveRecordOpenidStore::VERSION
  s.authors     = ["Alan Skorkin"]
  s.email       = ["alan@skorks.com"]
  s.homepage    = ""
  s.summary     = %q{An Active Record-based OpenID store}
  s.description = %q{A store is required by an OpenID server and optionally by the consumer to store associations, nonces, and auth key information across requests and processes. If rails is distributed across several machines, they must must all have access to the same OpenID store data, so the FilesystemStore won't do. The code here is copied from the openid-ruby library examples. All I did was package it up as a plugin for use with Rails 3.}

  s.rubyforge_project = "active_record_openid_store"

  s.add_dependency 'ruby-openid', '~> 2.1.0'

  s.add_development_dependency  'rake'
  s.add_development_dependency  'rspec', '~> 2.5.0'
  s.add_development_dependency  'json', '~> 1.4.3' # multi_json implementation

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
