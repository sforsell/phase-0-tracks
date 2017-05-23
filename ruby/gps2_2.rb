# PSEUDO CODE

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # make items the keys and the quantity the values. 
  # set default quantity
  # print the list to the console [print_list method]
# output: a hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
  # look for item in list
  	# IF item doesn't exist add item
  	# print list 
# output: hash with added items. 
		
# Method to remove an item from the list
# input: list, item name
# steps:
	# Find item in list
	# delete item
	# print list
# output: hash without the deleted items.


# Method to update the quantity of an item
# input: list, item, new quantity
# steps:
	# look for item in list
	# IF item exists, update the value with the new quantity
	# IF it doesn't exist, run add_item method
	# print list
# output: updated hash

# Method to print a list and make it look pretty
# input: list (hash)
# steps:
  # for each item print value (quantity) first followed by the keys (item), new line for each item.
# output: printed hash

=begin

# BEFORE REFACTOR

def create_list(string)
	init_list = {}
	string.split.each do |item|
		init_list[item] = 1
	end
	init_list
end

def add_item(list, item, quantity = 1)
	puts "adding #{quantity} #{item}..."
	if list.assoc(item) == nil
		list[item] = quantity
	else
		puts "You already have #{item} on your list!"
	end
	print_list(list)
end 

def remove_item(list, item)
	puts "deleting #{item}..."
	list.delete(item) { |item| puts "you don't have #{item} on your list," }
	print_list(list)
end

def update_quant(list, item, new_quantity)
	puts "updating amount of #{item}..."
	if list.assoc(item) == nil
		puts "there's no such item on your list,"
	else
		list[item] = new_quantity
	end
	print_list(list)
end



def print_list(list)
	puts "your current list is:"
	puts "---------------------"
	list.each do | item, quantity |
		puts "#{quantity} #{item}"
	end
	puts "---------------------"
end
=end

# AFTER REFACTOR

def create_list(string)
	init_list = {}
	string.split.each do |item|
		init_list[item] = 1
	end
	print_list(init_list)
	init_list
	
end

def add_item(list, item, quantity = 1)
	puts "adding #{quantity} #{item}..."
	if list.assoc(item) == nil
		list[item] = quantity
		print_list(list)
	else
		puts "You already have #{item} on your list,"
		update_quant(list, item, quantity)
	end

end 

def remove_item(list, item)
	puts "deleting #{item}..."
	list.delete(item) { |item| puts "you don't have #{item} on your list," }
	print_list(list)
end

def update_quant(list, item, new_quantity)
	puts "updating amount of #{item}..."
	if list.assoc(item) == nil
		puts "there's no such item on your list,"
		add_item(list, item, new_quantity)
	else
		list[item] = new_quantity
		print_list(list)
	end
	
end


def print_list(list)
	puts "your current list is:"
	puts "---------------------"
	list.each do | item, quantity |
		puts "#{quantity} #{item}"
	end
	puts "---------------------"
end

current_list = create_list("carrots apples cereal pizza")

add_item(current_list, "lemonade", 2)
add_item(current_list, "tomatoes")
add_item(current_list, "tomatoes", 3)
add_item(current_list, "ice cream", 4)
remove_item(current_list, "lemonade")
remove_item(current_list, "tea")
update_quant(current_list, "ice cream", 1)
update_quant(current_list, "salt", 1)




# REFLECTION

# Every time I use pseudo code I appreciate it more. It really does make a difference when you
# start writing the code itself. I have jumped into the coding without finished writing pseudo
# code first and it's really hard to find a direction in terms of work flow. 

# For this challenge my instinct was to go with a hash for structure because my mind could 
# figure out how to solve each part the easiest that way. However, when using a hash there are 
# plenty of built in array methods that are unavailable to you, such as index. It would be 
# harder to keep track of quantity if I used an array - the grocery list itself could be an 
# array of arrays of twos, but the code would look messier in the end. 

# a message returns "return #something", or the last line. If you're printing something that
# doesn't return it. you need to write out the thing you want to return.

# You can pass any data type as an argument. However, depending on what the method does you 
# might get an error message. If the method is using built in string methods you need to pass 
# the method arguments that are strings etc. If you are doing math calculations you need the 
# arguments to be integers. 

# You can use the local variables in method A to give to method B inside of method A:
# def method_A(param_a1, param_a2)
# 	method_B(param_a1, param_a2)
# end
#
# You can also pass method D as an argument to method C: method_C(method_D(argument_D))

# I can't say that my method knowledge was solidified but this excercise definitely helped 
# me understand more about methods, how they're used and how we can pass info along and 
# what is being returned. It also gave me more practice with scope. 
# I'm still slitghtly confused about methods and passing information along and how to use
# them together, but it's a little bit clearer now, and if I do run into trouble later on 
# with it I know to look at my methods. 















