def employee_survey
  print "What is your name? "
  name = gets.chomp.downcase

  print "How old are you? "
  age = gets.chomp.to_i

  print "What year were you born? "
  birth_year = gets.chomp.to_i

  print "Our company cafeteria serves garlic brea. Should we order some for you? "
  garlic = gets.chomp 

  print "Would you like to enroll in the company's health insurance? "
  insurance = gets.chomp

  conclusion = nil 

  if age == (2017 - birth_year) && (garlic == 'yes' || insurance == 'yes')
    conclusion = " #{name} is probably not a vampire "
  end

  if age != (2017 - birth_year) && (garlic == 'no' || insurance == 'no')
    conclusion = "#{name} is probably a vampire "
  end

  if age != (2017 - birth_year) && (garlic == 'no' && insurance == 'no')
    conclusion = "#{name} is almost certainly a vampire "
  end

  if name == 'drake cula' || name == 'tu fang'
    conclusion = "#{name} is definitely a vampire "
  end

  if conclusion == nil
    puts "results inconclusive"
  else
    puts conclusion
  end
end

puts "How many employees will be evaluated?"
employee_num = gets.chomp.to_i

i = 0
until i == employee_num do
  employee_survey
  i += 1
end