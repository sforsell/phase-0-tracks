# Outfit picker that takes wheather input and returns an outfit suggestion.

# The application needs 3 tables - clothes, users and a join table - user_closet
# When a user registers they need to log the clothes and accessories.

# The program will ask the user about the weather and depending on the answers 
# pick an outfit for the user. 

#     SCHEMA: 

#     items: 
#       id INT PK 
#       item VARCHAR <- name and short descr of item, ie "white ruffeled tank"
#       warmth_level INT <- between 1-3
#       category VARCHAR : tops, bottoms, shoes, accessories, coats, dresses

#     user: 
#       id INT PK
#       username VARCHAR

#     user_closet:
#       user_id
#       clothes_id

# Things I can build upon - down the line the app would also allow user to upload pictures of 
# items and the interface would provide a set list of category names to insure that 
# categories are consistent. Another field I would add as well is color. But I'm 
# trying to keep it simple for this challenge. 

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
#       retrieve an outfit based on temp and cloud situation. 

#     IF inspect closet
#       print all items user has

#     IF exit
#       exit program.


# ------- CREATE DB AND TABLES ------- 
require 'sqlite3'

def database
  @__database__ ||= begin
    db = SQLite3::Database.new("whether.db")
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
    warmth_level INT
  );

SQL

create_user_closet_table = <<-SQL
  CREATE TABLE IF NOT EXISTS user_closet (
    user_id INT,
    item_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (item_id) REFERENCES items(id)
  );

SQL

database.execute(create_user_table)
database.execute(create_items_table)
database.execute(create_user_closet_table)

# ------- BUSINESS LOGIC ------- 
def add_user(user_name)
  database.execute("INSERT INTO users (name) VALUES (?);", [user_name])
end

def fetch_user(user_name)
  user = database.execute("SELECT * FROM users WHERE name = ? ;", [user_name])
  return user[0] unless user.empty?
end

def add_item(item, category, warmth_level)
  database.execute("INSERT INTO items (item, category, warmth_level) VALUES (?, ?, ?);", 
                  [item, category, warmth_level])
end

def retrieve_item(warmth_level, category) # NOT SURE how to get info for joins. 
   database.execute("SELECT * FROM user_closet WHERE warmth_level = ? 
                    AND category = ? order by random () limit 1 
                    JOIN users ON user_closet.user_id = users.id 
                    JOIN items ON user_closet.item_id = items.id;"
                    [warmth_level, category])
end

# fetch_user(db, "sofia") # prints user_name, but does not update current_user_id
# add_item(db, "white button down", "tops", 2) # IVE ALREADY RUN THIS - IT WORKS

# ------- USER END -------

# INTERFACE:
#   Ask for user name 
#     if not a user already
#       create a user
puts "please type in your username"
user_name = gets.chomp
# if user_name in DB 
#   get user info
user = fetch_user(user_name)
# else
#   add user
#   get user info
# end
unless user
  user = create_user(user_name) 
end
# the user will always exist at this point. 


# LOOP - Ask user what they would like to do: add items to their closets, get an outfit 
# suggestion, see their closet items or exit
loop do
  puts "What would you like to do? \n To add an item to your closet type 'add', to get 
    an outfit suggestion type 'outfit', to see all your items in closet type 'print'. Type 'exit' 
    when you're done."
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
     
      add_item(item_descr, item_category, item_warmth)

      puts "Do you want to add more items? 'yes'/'no'"
      continue = gets.chomp

      break if continue == 'no'
      
    end
  end

  # IF retrieve outfit
  if action == 'outfit'
    # ask series of weather Qs,
    puts "What's the weather today? 'hot', 'medium', or 'cold'?"
    weather = gets.chomp
    # instead of big if/else, just check against this hash. 
    temperature = {
      "hot" => 1,
      "medium" => 2,
      "cold" => 3
    }

    # temperature[weather] # will get the warmth_level for method call. 
     
    puts "Is it 'sunny', 'cloudy' or 'rainy' outside?"
    cast = gets.chomp

    # retrieve an outfit based on temp. 
    top = retrieve_item(temperature[weather], "tops")
    bottom = retrieve_item(temperature[weather], "bottoms")
    shoes = retrieve_item(temperature[weather], "shoes")
    coat = retrieve_item(temperature[weather], "coats")
    accessory = retrieve_item(temperature[weather], "accessories")

    puts "Here's the perfect outfit for today: #{top[0]['item']}, #{bottom[0]['item']}, 
         #{shoes[0]['item']}, paired with the #{coat[0]['item']} and #{accessory[0]['item']}!"

    if cast == 'sunny'
      puts "And don't forget a sunhat!"
    elsif cast == 'rainy'
      puts "And don't forget an umbrella!"
    end
  end 

  # IF inspect closet
  if action == 'print'
  # print all items user has
    # print_closet (haven't written method yet)
  end

  # IF exit
  # exit program.
  break if action == 'exit'

end
puts "Thank you for using 'Weather or Not'!"



