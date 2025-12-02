require './lib/caesar.rb'

phrase = CaesarCipher.new("Hello World!", 10)
puts phrase.encode