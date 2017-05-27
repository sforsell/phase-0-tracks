# Word Guessing Game

# Create a class for game
  # Secret Word (passed in on initialization) that can be read
    # string, possibly made into array
  # Number of guesses allowed, that can be set and read
    # total number based on length of Secret Word
  # previous guesses, can be set and read
    # array

# Ask user1 for secret word.
  # use input to initialize game.
  # take Secret Words length, multiply by 1,5 and then round up number to have whole int.
  # output a string made up of underscores and spaces; " _" one underscore for each letter, and how many guesses are left.

# until Number of Guesses is 0 or all letters are matched
  # Ask user2 to guess one of the letters

    # if the letter is not in Previous Letter
      # add the input in the Previous Guesses
        # compare Previous Guesses against Secret Word using index.

          # if there's a match
            # print #letter was a match:
            # print the letter in that index's place instead of underscore
          # if no match
             # print no match!
        # deduct 1 from Number of Guesses and print how many guesses are left.

    # if the letter is in previous letter
      # do nothing

  # if Number of Guesses reaches 0
    # print a taunting message
  # if all letters are matched
    # print a congratulatory message

require 'io/console' # to hide the input from player 1
# ------------ CLASS --------------- #
class Game
  attr_reader :secret_word
  attr_accessor :guesses, :guesses_allowed
  
  def initialize(secret_word)
    @secret_word = secret_word.upcase
    @guesses_allowed = (secret_word.length*1.5).ceil
    @guesses = []
  end

  def guess(letter)
    @guesses << letter # check for duplicates later in driver code
  end

  def current_status
    current = String.new
    @secret_word.each_char do |letter|
      if @guesses.include?(letter)  
        current << letter + " " # tried using gsub! here, did not work as expected
      else
        current << "_ "
      end
    end
    current
  end

  def has_won
    # if the current status contains underscores, player has not guessed all letters
    if current_status.include? "_" 
      false
    else
      true
    end
  end
end
# ---------- USER INTERFACE ----------- #

puts "Ready to play a game? Player 1 type in a secret word!"
word = STDIN.noecho(&:gets).chomp # hides input from player 1

game = Game.new(word)

puts "Awesome word player 1! Player 2, you have #{game.guesses_allowed} guesses to go. \n"
puts game.current_status

while game.has_won == false
    if game.guesses_allowed == 0
      puts "Game over, you ran out of guesses!"
      break
    else
      puts "Guess a letter"
      letter = gets.chomp.upcase
      if game.guesses.include?(letter)
        print "You already guessed that letter \n"
      else
        game.guess(letter)
        game.guesses_allowed -= 1
        print "You have #{game.guesses_allowed} guesses left! \n"
      end
    end
    puts game.current_status
end

puts "Congratulations, you won!!"