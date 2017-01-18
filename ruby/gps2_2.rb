# Method to create a list - 1
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string by ' '
  # place separate strings into array
  # iterate over the array into a hash
  # set default quantity = default will be 1 given that its on the list
  # print the list to the console [can you use one of your other methods here?]
# output: p hash

# items = nil

def initialize_list(items)
  list_array = items.split(' ')
  grocery_list = {}
  list_array.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end

# list = initialize_list(items)
# p list

# Method to add an item to a list - 2
# input: list - hash, item name, and optional quantity
# steps: list hash from method 1
# item name = key inside hash
# optional quantity = default 1, value
# adding new items
# changing the quantity of items
# output: p updated hash

def add_item(list, item, x)
  if list.include?(item)
    list[item] += x
  else
    list[item] = x
  end
  list
end

# p add_item(list, "apples", 1)

# Method to remove an item from the list - 3
# input: p list - hash and item to be removed
# steps: item that has to be removed - .delete
# output: p updated hash without deleted item

def remove_item(list, item)
  list.delete(item)
  list
end

# p remove_item(list, "apples")

# Method to update the quantity of an item - 4
# input: list, item to update, new quantity
# steps: reassigning the value of the quantity for the designated key
# output: p updated hash

def update_quantity(list, item, new_x)
  list[item] = new_x
  list
end

# p update_quantity(list, "pizza", 5)

# Method to print a list and make it look pretty
# input: list - hash
# steps: print the hash
# output: iterate through a hash and list items and quantities in a sentence format

def pretty_print(list)
  list.each do |item, x|
    puts "--------------------------------"
    puts "We have #{x} #{item} on our list"
    puts "--------------------------------"
  end
end

# pretty_print(list)


# DRIVER CODE

items = "Lemonade Tomatoes Onions Ice-Cream"

p list = initialize_list(items)

p update_quantity(list, "Lemonade", 2)
p update_quantity(list, "Tomatoes", 3)
p update_quantity(list, "Ice-Cream", 4)

p remove_item(list, "Lemonade")

p update_quantity(list, "Ice-Cream", 1)

pretty_print(list)