# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

campus_db = SQLite3::Database.new("campus.db")
campus_db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS campus(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  )
SQL

campus_db.execute(create_table_cmd) 


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get "/campuses/new" do
	erb :campus
end

post "/campuses" do 
	campus_db.execute("INSERT INTO campus (name) VALUE (?)", [params['name']])
	redirect '/'
end





# add static resources