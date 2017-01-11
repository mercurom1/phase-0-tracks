names = ["Mike", "John", "Billy", "Joe"]
puts "This is the original array"
p names

dogs = {"greyhound" => "grey", "pitbull" => 'white', "goldendoodle" => 'gold'}
puts "This is the original hash"
p dogs

names.map! do | name|
	puts "This name is in caps"
	p name.upcase
end

new_array = []
puts "Here are the names in lowercase in a new array"
names.each do |name|
	new_array << name.downcase
end
p new_array

dogs.each do |dog, color|
	puts "My dog is a #{dog}, and it is #{color}"
end

puts "this is the list of names"
p names
puts "Now we are going to delete one name"
until names.length == 3
	names.pop
end
p names 

puts "here are the first set of dogs"
p dogs
puts "Now we are going to delete all dogs that are white"
dogs.delete_if {|dog, color| color == "white"}
p dogs


p names 
puts "Here we are going to pick the best name out of this list of names"
p names.select {|name| name == "MIKE"}

p dogs
puts "Here we are going to select the best dog out of this list of dogs"
p dogs.select {|dog, color| dog == "goldendoodle"}

p names
puts "Now we are going to delete a name in the list of names"
p names.delete_at(1)

p dogs
puts "Now we are going to reverse the order of the dogs on the list"
p dogs.sort{|a,b| a[1] <=> b[1]}


wallet = [600, 100, 900, 700]
puts "Here are my wallet with the amounts on each credit card #{wallet}"
puts "I am going to shop until I am flat out broke"

until wallet.empty?
	wallet.shift
end
puts "This is my wallet after the mall #{wallet}"




