#my word game should...
#take in a word on initalization
# letter_guess method should be a loop that allows the user to 
# input a letter.
# guesses are limited to the length of the word
# it returns the matched letter 
# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'word_game.rb'

describe WordGame do 
	let(:word) { WordGame.new("book") }

	it "stores a word given on initalization" do 
		expect(word.new_word).to eq("book")
	end

	it "allows the user to guess a letter" do 
		expect(word.letter_guess("o")).to eq("_oo_")
	end
	
end












