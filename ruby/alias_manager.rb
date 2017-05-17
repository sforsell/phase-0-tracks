# separate first and last name
# flip the order of the names
# join together again
# separate into individual character
# compare each letter


name = "Sofia Forsell".downcase.split(' ').reverse.join(' ').split('')

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
    p consonants[consonants.index(char) + 1]
  else vowels.index(char)
    p vowels[vowels.index(char) + 1]
  end
end

p name.join




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
