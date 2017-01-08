#Encrypt method takes in an argument of a string
#It takes each letter in the string and moves
# it forward one spot in the alphbet 
#any spaces, will remain a space. 

def encrypt(str)
	counter = str.length 
	index = 0 
	while counter != 0
		if str[index] == "z"
			str[index] = "a"
			counter -= 1
			index += 1
		else
			str[index] = str[index].next
			counter -= 1
			index +=1
		end

	end
	puts str
	str
end


#The decrypt method takes in an argument of a string
#takes each letter of that string and compares
#it to a variable of an alphabet. based on that
#variable it moves each letter in the string
#backwards on the alphabet.

def decrypt(str)
	counter = str.length
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while counter != 0
		if str[index] == "a"
			str[index] = "z"
			counter -= 1
			index += 1
		else 
			current_letter = alphabet.index(str[index])
			str[index] = alphabet[current_letter -1]
			counter -= 1
			index += 1
		end
	end
	puts str
end



#Nesting the methods together like: decrypt(encrypt("swordfish"))
#works because you are calling one method upon 
#another method. Ruby first runs the decrypt method
#on the string and then takes the return value from
#the decrypt method and runs that return value into
#encrypt method. So the final return value from
#the encrypt method is the orginial string of "swordfish"


#Code Driver

#Ask secret agent what method they want to use 
puts "Attention Mr. or Mrs. top secret agent; Would you like to encrypt or decrypt your top secret password?"
user_method = gets.chomp
user_method.downcase

#Applies that method to their password
if user_method == "encrypt"
	puts "Please type in your top secret password."
	password = gets.chomp
	encrypt(password)
elsif user_method == "decrypt"
	puts "Please type in your top secret password"
	password = gets.chomp
	decrypt(password)
else puts "Choice not valid"
end
#prints the return value of the method that the agent picks 

		



