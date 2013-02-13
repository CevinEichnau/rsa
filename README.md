# Rsa::Encrypter

Gem is in development-mode

## Developer

Cevin Eichnau

www.eichnau.com

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

## Time

enter your message

=> ruby

=> ruby

|------------------------------------------------------------|

Time elapsed encrypt 0.8540000000000001 milliseconds

|------------------------------------------------------------|

Time elapsed decrypt 2130.5420000000004 milliseconds

|------------------------------------------------------------|

Time elapsed all 2131.4030000000002 milliseconds

|------------------------------------------------------------|


enter your message

=> i love ruby

=> i love ruby

|------------------------------------------------------------|

Time elapsed encrypt 1.5790000000000002 milliseconds

|------------------------------------------------------------|

Time elapsed decrypt 5479.529 milliseconds

|------------------------------------------------------------|

Time elapsed all 5481.115 milliseconds

|------------------------------------------------------------|


## Todo

in the next stpes i build tests and a wiki-documentation

