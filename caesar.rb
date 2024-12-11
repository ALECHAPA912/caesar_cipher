def caesar_cipher(string, key)
  alphabet = ('a'..'z').to_a
  result = string.split("")
  result.each_with_index do |letter, i|
    alphabet.each_with_index do |char, index|
      pos = index + key
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