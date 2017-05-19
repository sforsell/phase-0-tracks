# Release 0: Simple Search
numbers = [11,23,37,42,51]
def search_array(arr, int)
	index = 0
    while index < arr.length
      if int == arr[index]
        p index
      end
      index += 1
    end
end
search_array(numbers, 99)
 
 # Release 1: Calculate Fibonacci Numbers
  def fib(num)
    fib_arr = [0,1]
    # last_num = fib_arr[-1]
    # second_to_last = fib_arr[-2]
    # next_num = last_num + second_to_last
    (num - 2).times do |num|
      fib_arr.push(fib_arr[-1] + fib_arr[-2])
    end
    p fib_arr.last
  end
  fib(100)
  
  # Release 2: Sort An Array
  # Sort Array Pseudo Code
  # Create an array of integers.
  # Define a method that takes one array parameter.
    # Create an empty array.
    # The method takes the first element of the array and inserts it into the empty array.
    # Take the next element in the old array and compare it to the element in the new array.
      # IF the element from the old array is less than the element of the new array.
        # Insert the old element to the first position in the new array.
      # ELSE
        # Insert the old element to the last position in the new array.