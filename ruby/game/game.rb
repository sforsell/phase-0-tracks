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
  # take Secret Words length, multiply by 1,5 and then floor number to have whole int.
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