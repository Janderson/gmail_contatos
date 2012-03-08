# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gmail_contatos/version"

Gem::Specification.new do |s|
  s.name        = "gmail_contatos"
  s.version     = GmailContatos::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Janderson F. Ferreira"]
  s.email       = ["ffjanderson@gmail.com"]
  s.homepage    = "https://github.com/Janderson/gmail_contatos"
  s.summary     = %q{ Simples gem para sincronizar com Gmail Contatos }
  s.description = %q{  Simples gem para sincronizar com Gmail Contatos }

  s.rubyforge_project = "gmail_contatos"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
