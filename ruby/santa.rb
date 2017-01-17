class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance ..."
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

	end
	 

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		deer = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(deer)
		@reindeer_ranking.push(reindeer)
		@reindeer_ranking
	end


	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	def age=(new_age)
		@age = new_age
	end

	def ethnicity=(new_ethnicity)
		@ethnicity = new_ethnicity
	end
	




end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "goat", "boy"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "Italian", "Mystical Creature (unicorn)", "German"]
puts "Santas are entering into SantaCon"
example_genders.length.times do |i|
	puts "Oh! a #{example_ethnicities[i]}, #{example_genders[i]} just walked in dressed as santa."
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "Now there are #{santas.length} Santas in SantaCon"
  puts "-------------------"
end


# santas[1].get_mad_at("Rudolph")
# santas[3].celebrate_birthday
