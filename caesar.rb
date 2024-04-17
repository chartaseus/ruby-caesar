def caesar_cipher(string, shift)
  lowercase_alphabet = ('a'..'z').to_a
  uppercase_alphabet = ('A'..'Z').to_a
  string_array = string.chars
  new_array = []
  
  string_array.each do |char|
    index = lowercase_alphabet.index(char) || uppercase_alphabet.index(char) || 0

    if index + shift > 26 then index -= 26 end
    
    if lowercase_alphabet.include?(char)
      new_array << lowercase_alphabet[index + shift]
    elsif uppercase_alphabet.include?(char)
      new_array << uppercase_alphabet[index + shift]
    else
      new_array << char
    end
  end

  return new_array.join
end