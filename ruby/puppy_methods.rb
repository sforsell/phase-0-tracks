class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times { p "woof! "}
  end

  def roll_over
    puts "*roll over*"
  end

  def dog_years(age)
    puts"#{age*7}"
    return age * 7
  end

  def sit
    puts "*sits down*"
  end
end

spot = Puppy.new

spot.fetch("ball")
spot.speak(3)
spot.roll_over
spot.dog_years(3)
spot.sit


class Cats
  def speak
    puts "meow!"
  end

  def walk_away
    puts "*turning around, and walking away*"
  end

end

cats = []
50.times { cats << kitty = Cats.new }
p cats

cats.each do |cat|
  cat.speak
  cat.walk_away
end