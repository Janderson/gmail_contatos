# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gmail_contatos/version"

Gem::Specification.new do |s|
  s.name        = "gmail_contatos"
  s.version     = GmailContatos::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Janderson F. Ferreira"]
  s.email       = ["TODO: ffjanderson@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Simples gem para sincronizar com Gmail Contatos}
  s.description = %q{TODO: }

  s.rubyforge_project = "gmail_contatos"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
