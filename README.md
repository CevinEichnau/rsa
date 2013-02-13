# Rsa::Encrypter

key = Rsa::Encrypter.generate_rsa
Rsa::Encrypter.encrypt(message, key[1], key[0])
Rsa::Encrypter.decrypt(message, key[2], key[0])

## Installation

Add this line to your application's Gemfile:

    gem 'rsa-encrypter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rsa-encrypter

## Usage

example to use :


key = Rsa::Encrypter.generate_rsa // key[1], key[0] for encrypt and  key[2], key[0] for decrypt

puts "your message ?" 

print "=> "; m = gets.chomp

e = Rsa::Encrypter.encrypt(m, key[1], key[0])

puts Rsa::Encrypter.decrypt(e, key[2], key[0])
