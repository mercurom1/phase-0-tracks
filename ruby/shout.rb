
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words.upcase + "!!!" + " =)"
  end
end



p Shout.yell_happily("hahahaha")