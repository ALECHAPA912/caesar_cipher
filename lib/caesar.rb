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
    if ordinal.between?(65,90)
      base = 64
      top = 90
    elsif ordinal.between?(97,122)
      base = 96
      top = 122
    else
      return char     
    end
    new_ordinal = ordinal + @key
    new_ordinal = (new_ordinal - top) + base if new_ordinal > top 
    new_ordinal.chr
  end
  
end
