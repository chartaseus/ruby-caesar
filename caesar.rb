def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  string_array = string.split("")
  new_array = []
  
  string_array.each do |letter|
    index = alphabet.index(letter)

    if index + shift > 26 then index -= 26 end

    new_array << alphabet[index + shift]
  end

  return new_array.join
end