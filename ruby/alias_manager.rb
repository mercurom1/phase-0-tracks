#alias_manager swaps the first and last name.
#changes vowels to the next vowel.(next_vowel method)
#changes consonants to the next consonant.(next_con method) 
#first takes in a string and turns it into an array 
#containing two strings. 
#use '.case' for upper and lowercase
#identify if the current letter is a vowel or consonant
#be sure to include elsif statements for edge statements 

vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvqxyz"

def next_vowel(str)
	new_vowel = str.gsub(/[aeiou]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a")
end



def next_consonant(str)
	new_con = str.gsub(/[bcdfghjklmnpqrstvqxyz]/, 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'q', 'q' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b')
end


def alias_manager
	puts "Please type in your name:"
	puts "However, if you want to go back to the homepage type in 'back"
	input = gets.chomp
	if input.downcase == "back"
		puts "EXIT"
	elsif input.downcase != "back"
		old_name = input 
		name_box = []
		name_box = old_name.split
		reverse_name = name_box.sort
		first_name = reverse_name[1]
		last_name = reverse_name[0]
		vowel_last = next_vowel(last_name.downcase)
		new_last = next_consonant(vowel_last.downcase)
		new_name = []
		new_name << new_last.capitalize!
		vowel_first = next_vowel(first_name.downcase)
		new_first = next_consonant(vowel_first.downcase)
		new_name << new_first.capitalize!
		alias_name = new_name.reverse.join(" ")
		puts "Your new alias is #{alias_name}"
		name_storage = {}
		name_storage.store(old_name, alias_name)
		p name_storage

	else 
		puts "Response invaild, forced to exit."
	end
end






user_input = nil

while user_input != "quit"
	puts "Welcome to the alias manager homepage"
	puts "Press enter to access the alias manager or type 'quit to exit"
	user_input = gets.chomp
	if user_input.downcase == "quit"
		puts "EXIT"
			
	else  
		alias_manager
		system_storage = {}
		system_storage = alias_manager
		system_storage.each do |real_name, spy_name|
			puts "#{real_name}'s alias is: #{spy_name}."
		end
	end
end







