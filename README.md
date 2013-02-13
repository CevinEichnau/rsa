# Rsa::Encrypter

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'rsa-encrypter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rsa-encrypter

## Usage

example to use :


key = Rsa::Encrypter.generate_rsa

puts "your message ?" 

print "=> "; m = gets.chomp

e = Rsa::Encrypter.encrypt(m, key[1], key[0])

puts Rsa::Encrypter.decrypt(e, key[2], key[0])