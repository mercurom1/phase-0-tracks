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
puts "Here is sushi village's menu"

view_menu = new_menu.execute("SELECT name, price From new_menu")
p view_menu