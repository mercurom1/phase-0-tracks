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


def alias_manager(str)
	name_box = []
	name_box = str.split
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
	return new_name.reverse.join(" ")
end


old_name = nil 

while old_name != "quit"
	puts "Welcome to the alias manager."
	puts "Please type in your name or type in 'quit' to exit the manager"
	old_name = gets.chomp
	if old_name.downcase == "quit"
		puts "pease"
	else 
		p alias_manager(old_name)
		alias_name = alias_manager(old_name)
	end
	name_storage = {old_name => alias_name}
	p name_storage
end


