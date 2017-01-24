# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative allows you to load file within another file. 
#require_relative allows you to access file across different folders
#require is mostly used for a broad set of ruby class files. 
#
require_relative 'state_data'

class VirusPredictor
#ititialize method takes in three arguements coming from state_data,rb
# and converts those arguements into instance variables. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calls two other methods within the class
  def virus_effects
    predicted_deaths(@population_density, @population)
    speed_of_spread(@population_density)
  end

  private
#Takes in three arguements. Sets conditional statements on those
#arguements to output is a string explaining the number of deaths in each state. 
  def predicted_deaths(population_density, population)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#It predicts the time(months) it takes the outbreak to effect the state by
#taking in the state and population_density as arguments and setting conidtionals
#for the density lengths. Depending on the density is adds a value to speed.
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, value|
  all_states = VirusPredictor.new(state, value[:population_density], value[:population])
  all_states.virus_effects
end

#=======================================================================
# Reflection Section