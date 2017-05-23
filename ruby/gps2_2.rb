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



current_list = create_list("carrots apples cereal pizza")
print_list(current_list)
add_item(current_list, "lemonade", 2)
add_item(current_list, "tomatoes", 3)
add_item(current_list, "onions")
add_item(current_list, "ice cream", 4)
remove_item(current_list, "lemonade")
update_quant(current_list, "ice cream", 1)





















