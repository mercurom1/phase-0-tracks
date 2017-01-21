#my word game should...
#take in a word on initalization
#
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
end



