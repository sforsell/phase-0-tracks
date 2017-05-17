# separate first and last name
# flip the order of the names
# join together again
# separate into individual characters
    # if letter is vowel, make it the next vowel
        # unless it's the last vowel, then make it the first vowel.
    # if the letter is a consonant make it the next consonant
        # unless it's the last consonant, then make it the next consonant.
    # if it's a space do nothing.
# once you've changed the characters, join the name back together again.

def alias_maker(full_name)
  name = full_name.downcase.split(' ').reverse.join(' ').split('')

  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
# =begin
  name.map! do |char|

    if char == 'u'
      char = 'a'
    elsif char == 'z'
      char = 'b'
    elsif char == ' '
      char = ' '
    elsif consonants.index(char)
      consonants[consonants.index(char) + 1]
    else vowels.index(char)
      vowels[vowels.index(char) + 1]
    end

  end

  p name.join

end


puts "type in your full name"
original_name = ""

while original_name = gets.chomp

  if original_name == 'quit'
    break
  else
    alias_maker(original_name)
  end

end



=begin

def decrypt(word)
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  i = 0

    while i< word.length

      # the opposite - if a replace with z
      if word[i] == "a"
        word[i] = "z"
      elsif word[i] == " "
        word[i] = " "
      else
        # compare the letter to the alphabet to find it's position
        # and then go back one.
        index_num = alphabet.index(word[i]) - 1
        # replacing the original letter with the new one
        word[i] = alphabet[index_num]
      end

      i += 1

    end

=end
