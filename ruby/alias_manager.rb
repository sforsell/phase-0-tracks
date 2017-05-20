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

stored_names = {}

def alias_maker(full_name)
  name = full_name.downcase.split(' ').reverse.join(' ').split('')

  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"

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


  capitalized = name.join.split.each do |item|
    item.capitalize!
    
  end

	alias_name = capitalized.join(' ')
	alias_name
	
end

puts "Type in full name, type 'quit' when you're done."
original_name = ""

while original_name = gets.chomp

  if original_name == 'quit'
    break  
  else
    stored_names[original_name] = alias_maker(original_name)
  end

end

stored_names.each_pair { |key, value| puts "#{value} is actually #{key}"}




