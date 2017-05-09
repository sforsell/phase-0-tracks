puts "Name of Hamster?"
name = gets.chomp

puts "Volume level? 1-10"
volume = gets.chomp.to_i

puts "Color of fur?"
color = gets.chomp

puts "Good candidate for adoption? y/n"
adoption_score = gets.chomp
if adoption_score == "y"
  adoption_score = true
elsif adoption_score == "n"
  adoption_score = false
else
  adoption_score = "unknown"
end


puts "Estimated age?"
age = gets.chomp.to_i

puts "#{name} has a volume level of #{volume} and is #{color}. Good candidate for adoption? #{adoption_score}. The estimated age is #{age}"