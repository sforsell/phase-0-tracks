class Santa
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

end

santas = []

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", 
	"prefer not to say", "basic bitch", "priviliged", "it's complicated"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", 
	"unicorn", "N/A", "ginger", "faun", "centaur", "mermaid"]

	genders.length.times do |i|
		santas << Santa.new(genders[i], ethnicities[i])
	end

	print santas