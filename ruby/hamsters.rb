age = nil 

puts "Enter hamter's name"
name = gets.chomp 

puts "Enter volume 1-10"
volume_lvl = gets.chomp
volume_lvl.to_i 

puts "Enter fur color"
fur_color = gets.chomp 

puts "Rate the condition for adoption "
condition = gets.chomp

puts "Enter the hamster's age"
age = gets.chomp
age.to_i 

 puts "Your hamster is #{name} with a noise level of #{volume_lvl} and #{fur_color} colored fur.  You rated its condition as #{condition} out of 10 and estimated the age as #{age}."