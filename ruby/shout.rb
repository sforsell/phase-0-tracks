=begin

module Shout
	def self.yell_angrily(words)
		words.upcase + "!!!" + " :( "
	end

	def self.yell_happily(words)
		words + "!!" + " :D "
	end
end

=end

module Shout
	def yell_angrily(words)
		words.upcase + "!!! :( "
	end

	def yell_happily(words)
		words + "!! :D "
	end
end

class OldPerson
	include Shout
end

class Kid
	include Shout
end

old_man_jim = OldPerson.new

p old_man_jim.yell_angrily("get off my property")
p old_man_jim.yell_happily("Look, it's my grandchild")

ella = Kid.new

p ella.yell_happily("Ice cream")
p ella.yell_angrily("I want ice cream") 