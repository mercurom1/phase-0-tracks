
module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
  	puts words.upcase + "!!!" + " =)"
  end
end


class Teacher
	include Shout
end

class Coach
	include Shout
end

teacher = Teacher.new
teacher.yell_angrily("You all got F's")

coach = Coach.new
coach.yell_happily("we won the game")