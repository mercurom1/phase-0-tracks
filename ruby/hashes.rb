


#First make an empty hast for the client
client = {}
#second prompt the client with questions and hold the answers into the hash
puts "I am flattered that you picked me to be your interior designer"
puts " I just need a little information for your file."
puts "To start off; what is your name?"
client[:name] = gets.chomp
puts "Okay #{client[:name]}, how old are you?"
client[:age] = gets.chomp
puts "How many children do you have?"
client[:children] = gets.chomp
puts "What is your decor theme of choice?"
client[:decor_theme] = gets.chomp
puts "What is your favorite color?"
client[:color] = gets.chomp
#Show the hash and ask if any changes have to be made
puts "Okay so, here is your file so far; let me know if you need to make and changes."
p client
#Ask what changes need to be made and have the user write in a new value
puts "Do you need to make any changes?(y/n)"
user_input = gets.chomp
if user_input == "y"
	puts "What category would you like to change; name, age, number of children, favorite color, or decor theme"
	category = gets.chomp
	if category == "name"
		client[:name] = gets.chomp
	elsif category == "age"
		client[:age] = gets.chomp
	elsif category == "number of children"
		client[:children] = gets.chomp
	elsif category == "favorite color"
		client[:color] = gets.chomp
	elsif category == "decor theme"
		client[:decor_theme] = gets.chomp
	else puts "I'm sorry I did ask for that category"
	end
	puts "Great here is your updated file and now we can move forward!"
	p client
#leave a closing remark and show the updated hash
else puts "Great here is your updated file and now we can move forward!"
p client
end


			