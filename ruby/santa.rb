class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
		cookie_type
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.slice!(@reindeer_ranking.index(reindeer))
		@reindeer_ranking.push(reindeer)
	end	

end

santas = []

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", 
	"prefer not to say", "basic bitch", "priviliged", "it's complicated"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", 
	"unicorn", "N/A", "ginger", "faun", "centaur", "mermaid"]

1000.times do 
	santas << Santa.new(genders.sample, ethnicities.sample)
end

p santas
p santas.length
=begin

santa1 = Santa.new("male", "white")
p santa1

santa1.get_mad_at("Rudolph")
santa1.celebrate_birthday
p santa1.age

p santa1

santa1.gender = "transforming"

p santa1

=end






