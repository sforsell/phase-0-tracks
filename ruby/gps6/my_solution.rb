# Virus Predictor

# I worked on this challenge [by myself].
# I spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# file exists in same directory hence the "relative"
# fetches the file in qoutes. 

require_relative 'state_data'

class VirusPredictor
  # pulls in data for each instance upon initialization.  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # virus effects outputs a string, one from each method inside. 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # checks for density and based on density level number of deaths go up. Number
  # of deaths are based on population times a float.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density > 199
      total_deaths = (@population * 0.4)
    elsif @population_density > 149
      total_deaths = (@population * 0.3)
    elsif @population_density > 99
      total_deaths = (@population * 0.2)
    elsif @population_density > 49
      total_deaths = (@population * 0.1)
    else
     total_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{total_deaths.floor} people in this outbreak"

  end
  # again checks for population density and based on that returns a number: speed. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density > 199
      speed = 0.5
    elsif @population_density > 149
      speed = 1
    elsif @population_density > 99
      speed = 1.5
    elsif @population_density > 49
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 # iteration would get the state "strings" a key and the hash as the value. 

=begin
## iteration practice ##
outerHash = {
  "ONE" => {one: "*1*", eleven: "*11*", hundredeleven: "*111*"},
  "TWO" => {two: "*2*", twentytwo: "*22*", two0022: "*222*"},
  "THREE" => {three: "*3*", thirtythree: "*33*", three0033: "*333*"},
  "FOUR" => {four: "*4*", fortyfour: "*44*", four0044: "*444*"},
  "FIVE" => {five: "*5*", fiftyfive: "*55*", five0055: "*555*"}
}

outerHash.each do | outer_key , outer_value|
  puts "#{outer_key}"
  outerHash[outer_key].each do | inner_key, inner_value |
    puts " #{inner_key} + #{inner_value}"
  end
end
puts outerHash["ONE"][:one]
=end


STATE_DATA.each_key do | state |
 
  
    VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
  
end
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

=end
#=======================================================================
# Reflection Section
# the difference in syntax is that the state key is a string and references to its 
# value with a rocket => and the population_density and population are symbols. 
# also, the states are all on a new line whereas the state hash is on one line. 

# require_relative:  you can give require_relitve a relative path (not required if 
# in the same directory).
# require searches by an absolute path from your top directory.

# you can iterate over hashes using .each, .each_key, .each_pair and .each_value. 

# At first, just the amount of variables stood out to me, but the second thing was 
# that they weren't instance variables and when I looked at the methods 
# in virus_effects they weren't even using the method parameters, they were using 
# the instance variables. 

# The concept I mostly solidified was iteration, but nested data also got a refresher. 


