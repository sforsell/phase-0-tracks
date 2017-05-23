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
  	# IF it exists, run update_quantity method
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
# input:
# steps:
	# look for item in list
	# IF item exists, update the value with the new quantity
	# IF it doesn't exist, run add_item method
	# print list
# output: updated hash

# Method to print a list and make it look pretty
# input: list (hash)
# steps:
  # for each item print value (quantity) first followed by the keys, new line for each item.
# output: printed hash


def create_list(string)
	init_list = {}
	string.split.each do |item|
		init_list[item] = 1
	end
	init_list
end

def print_list(list)
	puts "your current list is:"
	list.each do | item, quantity |
		p "#{quantity} #{item}"
	end
end



def add_item(list, item, quantity = 1)
	list[item] = quantity
end 





current_list = create_list("carrots apples cereal pizza")
add_item(current_list, "tea")
add_item(current_list, "bananas", 3)
print_list(current_list)

















