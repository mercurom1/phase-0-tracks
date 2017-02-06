# Text_order allows the user to text a resturant their order. 
# it has menu with the prices of each item.(menu.db)
# user views the menu and picks out each item based on its index. (order.db)

require 'sqlite3'
require 'faker'


new_menu = SQLite3::Database.new("new_menu.db")
new_menu.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS new_menu(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    price INT
  )
SQL



new_menu.execute(create_table_cmd)

# I am going to hard code the data into the menu. 
puts "Here is sushi village's menu:"

view_menu = new_menu.execute("SELECT name, price From new_menu")
p view_menu


order_form = SQLite3::Database.new("order_form.db")
order_form.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS order_form(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    price INT
  )
SQL

order_form.execute(create_table_cmd)

def add_food(order_form, name, price)
	order_form.execute("INSERT INTO order_form (name, price) VALUES (?, ?)", [name, price])
end

puts "How many items would you like to order"
order_length = gets.chomp

puts "Write down each item along with its price."

name = gets.chomp
price = gets.chomp


order_length.to_i.times do 
	add_food(order_form, name, price)
end


view_order = order_form.execute("select * from order_form")

p view_order
