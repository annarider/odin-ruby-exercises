def caesar_cipher(string, shift)
  string.chars.reduce("") do |result, character|
    if /[a-zA-Z]/.match?(character)
      base = character.between?("a", "z") ? 97 : 65
      integer_ordinal_character = character.ord
      shifted_character = ( integer_ordinal_character - base + shift ) % 26 # 87 (W) to 66 (B)
      unicode_convert = shifted_character + base
      result += unicode_convert.chr
    else
      result += character
    end
  end
end

p caesar_cipher("What a string!", 5)
#=> "Bmfy f xywnsl!"