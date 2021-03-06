# Outfit picker that takes weather input and returns an outfit suggestion.

# The application needs 2 tables - clothes, users.
# When a user registers they don't have clothes to pick from so they need
# to log the clothes and accessories.

# The program will ask the user about the weather and depending on the answers 
# pick an outfit for the user. 

#     SCHEMA: 

#     items: 
#       id INT PK 
#       item VARCHAR <- name and short descr of item, ie "white ruffeled tank"
#       warmth_level INT <- between 1-3
#       category VARCHAR : tops, bottoms, shoes, accessories, coats, dresses
#       user_id INT FK

#     user: 
#       id INT PK
#       username VARCHAR

# PROGRAM:

# create DB
# create tables

# Method to store user 

# Method to retrieve user

# Method to add items

# Method to retrieve outfit. 

# Method to print a users closet.

# INTERFACE:
#   Ask for user name 
#     if not a user already
#       create a user
  
#   LOOP - Ask user what they would like to do: add items to their closets, get an outfit 
#   suggestion, see their closet items or exit

#     IF add items
#       LOOP through set of questions to collect data
#         add item to clothes database
#         exit when user types 'done'

#     IF retrieve outfit
#       ask series of weather Qs, 
#       retrieve an outfit based on temp

#     IF inspect closet
#       print all items user has

#     IF exit
#       exit program.

# ------- REQUIRES ------- 

require 'sqlite3'

# ------- CREATE DB AND TABLES ------- 

def database
  @__database__ ||= begin
    db = SQLite3::Database.new("weather.db")
    db.results_as_hash = true
    db    
  end
end

create_user_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
  );

SQL

create_items_table = <<-SQL
  CREATE TABLE IF NOT EXISTS items (
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    category VARCHAR(255),
    warmth_level INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
  );

SQL

# ------- BUSINESS LOGIC ------- 

def add_user(user)
  database.execute("INSERT INTO users (name) VALUES (?);", [user])
end

def fetch_user(user)
  user = database.execute("SELECT * FROM users WHERE name = ? ;", [user])
  return user[0] unless user.empty?
  #user returns as just a hask - not a hash inside an array. 
end

def add_item(item, category, warmth_level, user)
  database.execute("INSERT INTO items (item, category, warmth_level, user_id) VALUES (?, ?, ?, ?);", 
                  [item, category, warmth_level, user])
end

def retrieve_item(warmth_level, user, category ) 
  item = database.execute("SELECT item FROM items 
                    WHERE warmth_level = ?
                    AND user_id = ?
                    AND category = ? order by random () limit 1;",
                    [warmth_level, user, category])
  return item[0]
end

def print_clothes(user)
  items_list = database.execute("SELECT item, category FROM items WHERE user_id = ? ORDER BY category;", [user])
  puts "These are the clothes in your closet:"
  items_list.each_index do |index|
    puts "- #{items_list[index]['item']} --> #{items_list[index]['category']}"
  end
end

# ------- DRIVER ?TEST CODE ------- 

# fetch_user("sofia") -- returns hash
# fetch_user("sofia")['id'] -- reurns id as int
# add_item("white button down", "tops", 2, 1) -- works like this
# retrieve_item(2, 1, "bottoms") # -- returns hash
# retrieve_item(2, 1, "bottoms")['item'] # -- returns string
# print_clothes(1)

# items_list = database.execute("SELECT item FROM items WHERE user_id = 1 ORDER BY category;")
# items_list # -- returns an array with many hashes. 

# ------- USER END -------

database.execute(create_user_table)
database.execute(create_items_table)


puts "please type in your username"
user_name = gets.chomp
# get user info
user = fetch_user(user_name)
# unless user doesn't exit
unless user
  # create user
  user = add_user(user_name) 
end
# the user will always exist at this point. 

# LOOP - Ask user what they would like to do: add items to their closets, get an outfit 
# suggestion, see their closet items or exit
loop do
  puts "What would you like to do?" 
  puts "To add an item to your closet type 'add',\n to get an outfit suggestion type 'outfit',\n to see all your items in closet type 'print'.\n Type 'exit' when you're done."
  action = gets.chomp

# IF add items 
  if action == 'add'
# LOOP through set of questions to collect data
  puts "Answer each question about the item you would like to add, when you're done type 'done'"

    loop do 
      puts "What item would you like to add? i.e 'white ruffeled blouse'"
      item_descr = gets.chomp

      puts "what category does it fall under: tops, bottoms, shoes, coats or accessories?"
      item_category = gets.chomp

      puts "On a scale from 1-3 how warm is this item?"
      item_warmth = gets.chomp
     
      add_item(item_descr, item_category, item_warmth, user['id'])

      puts "Do you want to add more items? 'yes'/'no'"
      continue = gets.chomp

      break if continue == 'no'
      
    end
  end

  if action == 'outfit'
  
    puts "What's the weather today? 'hot', 'medium', or 'cold'?"
    weather = gets.chomp
    # instead of big if/else, just check against this hash. 
    temperature = {
      "hot" => 1,
      "medium" => 2,
      "cold" => 3
    }
    # temperature[weather] will get the warmth_level for method call. 
    
    puts "Is it 'sunny', 'cloudy' or 'rainy' outside?"
    cast = gets.chomp

    # retrieve an outfit based on temp. 
    top = retrieve_item(temperature[weather], user['id'], "tops")['item']
    bottom = retrieve_item(temperature[weather], user['id'], "bottoms")['item']
    shoes = retrieve_item(temperature[weather], user['id'], "shoes")['item']
    coat = retrieve_item(temperature[weather], user['id'], "coats")['item']
    accessory = retrieve_item(temperature[weather], user['id'], "accessories")['item']

    puts "Here's the perfect outfit for today:"
    puts "#{top}, #{bottom}, #{shoes}, paired with the #{coat} and #{accessory}!"

    if cast == 'sunny'
      puts "And don't forget a sunhat!"
    elsif cast == 'rainy'
      puts "And don't forget an umbrella!"
    end
  end 

  if action == 'print'
    print_clothes(user['id'])
  end

  break if action == 'exit'

end
puts "Thank you for using 'Weather or Not'!"



