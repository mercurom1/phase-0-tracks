#Word guessing game. 
#user one inputs a word
#user two trys to guess the word
#the amount of guesses is limited to the length of the word
# guess- loop is equal to word.length
# need a condition in there as well to match the input letter with
# with the letters in the word.  
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

	def letter_guess(letter)
		new_array = []
		word_array = @word.split("")
		word_array.map! do |word_letter|
			if word_letter != letter 
				word_letter = "_"
				new_array << word_letter
			elsif word_letter === letter
				word_letter = letter
				new_array << word_letter
			end
		end
		return new_array.join
	end
end








