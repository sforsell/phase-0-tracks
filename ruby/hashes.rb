# prompt user for clients
	# name
	# age
	# no of children
	# decor theme
	# allergies
	# big budget or not
# convert input to appropriate data
# print the finished hash after all input
# give user opportunity to update one key unless they type 'none'
# print updated version of hash then exit program. 

client_info = {}

puts "Clients name?"
client_info[:name] = gets.chomp

puts "Clients age?"
client_info[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_info[:no_children] = gets.chomp.to_i

puts "Preferred decor theme?"
client_info[:decor_theme] = gets.chomp

puts "Known allergies?" 
client_info[:allergies] = gets.chomp

puts "Big budget? (yes/no)"
budget = gets.chomp

if budget == 'yes'
	client_info[:big_budget] = true
else
	client_info[:big_budget]  = false
end

p client_info

puts "is there anything you like to change? type none if not"
update = gets.chomp

if update == 'none'
	p client_info
elsif update == 'big_budget'
	puts "what is the new value?"
	budget = gets.chomp
		if budget == 'yes' || 'true'
			client_info[:big_budget] = true
		elsif budget == 'no' || 'false'
			client_info[:big_budget]  = false
		end
	p client_info
else
	puts "what is the new value?"
	new_value = gets.chomp
	client_info[update.to_sym] = new_value
	p client_info
end