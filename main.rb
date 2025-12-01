require './lib/caesar.rb'

phrase = CaesarCipher.new('Hello World!', 6)
puts phrase.encode