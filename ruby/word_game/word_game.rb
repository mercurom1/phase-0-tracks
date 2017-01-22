

class WordGame
	attr_accessor :word 
	attr_accessor :new_array
	attr_accessor :is_over
	attr_accessor :word_array
	attr_accessor :guess_array

# initalize should take in a word
	def initialize(word)
		@word = word
		@is_over = false
		@word_array = []
		@guess_array = []
		@new_array = []

	end
# take the word and split it into an array so each letter is seperate
	def new_word
		@word_array = @word.split(//)
		p @word_array
	end
# show the player two the length of the word as a hint
	def word_length
		@word_array.length.times do 
			p "_"
		end
	end
# player 2 should be able to make their guess for the word
	def guess_word(guess)
		@guess_array = guess.split(//)
	end

	def empty_array
		@word_array.length.times do
			@new_array.push("_")
		end
	end
# game should congradulate the user when they get the word correct.
	def game_over
		if @word_array == @new_array
			@is_over = true
			puts "Congradulations you won yasss"
		end
	end
end


#user interface
# get the users names
puts "Welcome to the awesome word game!"

puts "Player 1, please enter your name:"
player_one = gets.chomp

puts "Sup #{player_one}, you'll be the one who enters a word."

puts "Player 2, please enter your name:"
player_two = gets.chomp
puts "Sup #{player_two}, you'll be the one that tries to guess the word."
puts "#{player_one}, please enter a word:"
word_entry = gets.chomp
game = WordGame.new(word_entry)
game.new_word
game.word_length
game.empty_array

#make a loop that is limited to the length of the word and
#add the correct letters to the new array.
game_count = 0
while !game.game_over
	if game_count != game.word_array.length
		puts "#{player_two}, please make your guess:"
		player_guess = gets.chomp
		game.guess_word(player_guess)
		counter = 0
		game.word_array.each do |x|
			if game.guess_array.include?(x)
				game.new_array.insert(counter, x)
				game.new_array.delete_at(counter + 1)
			end
			counter += 1
		end
		puts game.new_array
		game_count += 1
	else
		puts "Unfortunetly your number of guesses are limited, sorry but you lost."
		break
	end
end






