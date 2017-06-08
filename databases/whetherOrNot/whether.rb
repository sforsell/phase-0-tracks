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

require 'sqlite3'

db = SQLite3::Database.new("whether.db")
db.results_as_hash = true

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

db.execute(create_user_table)
db.execute(create_items_table)
db.execute(create_user_closet_table)



























SQL


