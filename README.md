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

TODO: Write usage instructions here

## Contributing

example:

key = generate_rsa

puts "your message ?"
print "=> "; m = gets.chomp

e = encrypt(m, key[1], key[0])

puts decrypt(e, key[2], key[0])
