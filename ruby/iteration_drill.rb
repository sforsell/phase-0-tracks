# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

my_supplies = zombie_apocalypse_supplies

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
my_supplies.each { |item| print "#{item}*"}
# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
my_supplies.each do 
  updated = false
  index = 0

  my_supplies.each do |item|
    break if my_supplies[index] == my_supplies[-1]

    if item.downcase > my_supplies[index+1]
      my_supplies[index], my_supplies[index+1] = my_supplies[index +1], my_supplies[index]
      updated = true
    end

    index += 1

  end

  break if updated == false 
  
end
p my_supplies


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def search(word, list)
	list.each do |item|
		if item == word
			p " '#{item}' was found" 
		end
	end
end

search("boots", my_supplies)
search("batteries", my_supplies)
# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
=begin

my_supplies = my_supplies[0..4]
p my_supplies

=end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
combined_supplies = other_survivor_supplies.push(my_supplies).flatten.uniq!
p combined_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each_pair { |species, year| print "#{species}-#{year}*"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
=begin
extinct_animals2 = {}

extinct_animals.each do |key, value|
	if value < 2000 
		extinct_animals2[key] = value
	end
end
extinct_animals = extinct_animals2
p extinct_animals
=end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
extinct_animals.each { |species, year| extinct_animals[species] = year-3 }

p extinct_animals.values
# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
extinct_animals.each do |keys, values|
	if keys == "Andean Cat"
		print "Andean Cat is a match"
	elsif keys == "Dodo"
		print "Dodo is a match"
	elsif keys == "Saiga Antelope"
		print "Saiga Antelope is a match"
	end
end
# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
new_array =  [ "Passenger Pigeon", extinct_animals.delete("Passenger Pigeon") ]
# OR
# p extinct_animals.assoc("Passenger Pigeon")
# extinct_animals.delete("Passenger Pigeon")

p extinct_animals
p new_array