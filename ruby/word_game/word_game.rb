#Word guessing game. 
#user one inputs a word
#user two trys to guess the word
#the amount of guesses is limited to the length of the word
#repeated guess do not count
#if a correct letter is guessed then it appears in its correct position
#within the string to the user
#user gets congradulated once the game is over


class WordGame
	def initialize(word)
		@word = word
	end

	def new_word
		@word
	end
	
end
