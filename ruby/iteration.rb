names = ["Mike", "John", "Billy", "Joe"]
puts "This is the original array"
p names

dogs = {"greyhound" => "grey", "pitbull" => 'white', "goldendoodle" => 'gold'}
puts "This is the original hash"
p dogs

names.map! do | name|
	puts "These are the names in caps"
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
"Here we are going to pick the best name out of this list of names"
p names.select {|name| name == "MIKE"}

p dogs
"Here we are going to select the best dog out of this list of dogs"
p dogs.select {|dog, color| dog == "goldendoodle"}

p names
puts "Now we are going to delete a name in the list of names"
p names.delete_at(1)

p dogs
puts "Now we are going to reverse the order of the dogs on the list"
p dogs.sort{|a,b| a[1] <=> b[1]}




girl_names = ["Jess", "Katie", "Vikki", "Danielle"]

girl_names.each do |name|
	if name.length == 4
		true
	else 
		name.delete
	end
	p girl_names
end



#names > 4 letters long = true
#iteration deletes names 4 letters long
#left with an empty array 
