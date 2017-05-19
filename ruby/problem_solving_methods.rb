# Release 0: Simple Search
numbers = [11,23,37,42,51]
def search_array(arr, int)
	index = 0
    while index < arr.length

      if int == arr[index] then p index end

      index += 1
    end
end
search_array(numbers, 37)
search_array(numbers, 99)
 
 # Release 1: Calculate Fibonacci Numbers
  def fib(num)
    fib_arr = [0,1]
    # last_num = fib_arr[-1]
    # second_to_last = fib_arr[-2]
    # next_num = last_num + second_to_last
    (num - 2).times { fib_arr.push(fib_arr[-1] + fib_arr[-2]) }

    p fib_arr.last
  end
  fib(100)
  fib(6)
  
# Release 2: Sort An Array

# Sort Array Pseudo Code
# Create an array of integers.
# Define a method that takes one array parameter.
  # Create an empty array.
  # The method takes the first element of the old array and inserts it into the new array.
  	# For each element (except first one because we moved it already) in old array it 
  	# goes over all the elements in the new array comparing them starting at index 0
    	# IF the element from the old array is less than the element of the new array at current index.
      	# Insert the old element to the current index position, bumping the prev holder of position 
      	# up one peg, and go to the next element in old array.
    	# ELSIF you're at the last index position in new array ie the number was
    	# not equal to or lower than any other number in new array meaning it's the highest
      	# Insert the old element to the last position in the new array, and move on to the next element 
      	# in old array.
    	# ELSE start the loop over to compare the old element with element at the next position 
    	# in new array (index +1)
  	# When an element has found it's place in new array, go to the next element in old array.


def insertion_sort(prev_array)
	new_array = [prev_array[0]] #creating new array with first object in old array
	prev_array.delete_at(0) # deleting it from old array to avoid duplication

	prev_array.each do |element|
		new_array_index = 0 # resetting index to 0 every time we've put an element in the new array

		while new_array_index < new_array.length # goes through all elements in new array
			if element <= new_array[new_array_index] # is element less than or equal to new array item?
				new_array.insert(new_array_index, element) # put it in at that place
				break # go to next item in old array
			elsif new_array_index == new_array.length-1 #are we at the end of the new array?
				new_array.insert(new_array_index+1, element) # put it in last place
				break #go to next item in old array
			end

			new_array_index += 1 #couldn't find a place for item? compare with the next element in new array. 
		end

	end

	new_array
end

int_array = [5, 3, 8, 2, 9, 0]
char_array = %w{ g f u d a e b }
word_array = %w{ omg becky look at her butt }


p insertion_sort(int_array)
p insertion_sort(char_array)
p insertion_sort(word_array)









