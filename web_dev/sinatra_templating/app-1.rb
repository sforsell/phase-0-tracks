# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/about_student' do
 @students = db.execute("SELECT DISTINCT campus FROM students")
 @locations = db.execute("SELECT DISTINCT location FROM locations")
 erb :about_student
end 

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/new_location' do 
	db.execute("INSERT INTO locations (location) VALUES (?)", [params['location']])
	redirect '/about_student'
end 

# add static resources