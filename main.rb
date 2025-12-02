require './lib/caesar.rb'

phrase = CaesarCipher.new("Hello World!", 26)
puts phrase.encode