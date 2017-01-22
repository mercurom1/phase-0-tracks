#my word game should...
#take in a word on initalization
# allow the user to make their guess on the word 
# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'word_game.rb'

describe WordGame do 
	let(:word) { WordGame.new("book") }

	it "stores a word given on initalization" do 
		expect(word.new_word).to eq(["b", "o", "o", "k"])
	end

	it "allows the user to guess a word" do 
		expect(word.guess_word("book")).to eq(["b", "o", "o", "k"])
	end

	it "gives feedback when the user wins the game" do 
		expect(word.game_over).to eq("Congradulations you won yasss")
	end

	
end












