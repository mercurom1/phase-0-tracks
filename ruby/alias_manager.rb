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
	str.gsub(/[aeiou]/, "a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a")
end

puts next_vowel("hello")
