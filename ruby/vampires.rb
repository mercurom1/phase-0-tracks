
puts "how many employees are being processed?"
employees_number = gets.chomp

current_number = 0

puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "Where were you born?"
birth_place = gets.chomp
puts "Our cageteria makes great garlic bread! do you want any?? (y/n)"
garlic_answer = gets.chomp
puts "Would you be interested to enroll in our company's health insurance? (y/n)"
insurance_answer = gets.chomp

if age == (20..60) && garlic_answer == "y" || insurance_answer == "y"
	puts "Canidate is probably not a vampire."
elsif age != (20..60) && garlic_answer == "n" || insurance_answer == "n"
	puts "Canidate is probably a vampire"
elsif age != (20..60) && garlic_answer == "n" && insurance_answer == "n"
	puts "Canidate is almost certainly a vampire."
elsif name == "Drake Cula" || "Tu Fang"
	puts "Canidate is Definitely a vampire."
else 
	puts "Results inconclusive."
end

puts "Your name is #{name}, you are #{age} years old, and you were born in #{birth_place}."	

current_number += 1
		
		


