# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsa-encrypter/version'

Gem::Specification.new do |gem|
  gem.name          = "rsa-encrypter"
  gem.version       = Rsa::Encrypter::VERSION
  gem.authors       = ["Cevin Eichnau"]
  gem.email         = ["cevin@empuxa.com"]
  gem.description   = %q{rsa-encrypter to encrypt messages like password usw}
  gem.summary       = %q{ its a rsa-encrypter they use a private and public key to encrypt and decrypt messages}
  gem.homepage      = "http://eichnau.com/posts/96"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
