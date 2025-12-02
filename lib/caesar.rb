class CaesarCipher
  attr_reader :phrase, :key

  def initialize(phrase, key)
    @phrase = phrase
    @key = key
  end

  def change_phrase(phrase)
    @phrase = phrase
  end

  def change_key(key)
    @key = key
  end

  def encode
    result = []
    @phrase.split('').each do |char|
      result << encode_char(char)
    end
    result.join('')
  end

  def encode_char(char)
    ordinal = char.ord
    if ordinal.between?(65,90) || ordinal.between?(97,122)
      base = ordinal < 91 ? 65 : 97
      new_ordinal = ordinal + @key
      new_ordinal = (new_ordinal - base ) % 26 + base 
      new_ordinal.chr
    else
      return char     
    end
  end
end
