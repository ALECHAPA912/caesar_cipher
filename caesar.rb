class CaesarCipher

  def initialize(string, key)
    @string = string
    @key = key
  end

  def caesar_cipher
    alphabet = ('a'..'z').to_a
    result = @string.split("")
    result.each_with_index do |letter, i|
      alphabet.each_with_index do |char, index|
        pos = index + @key
        if (char == letter)
          result[i] = alphabet[pos]
          if (pos > 25)
            result[i] = alphabet[pos - 26]
          end
        end
        if (char.upcase == letter)
          result[i] = alphabet[pos].upcase
          if (pos > 25)
            result[i] = alphabet[pos - 26]
          end
        end
      end
  end
  print result.join("")
  end
end
