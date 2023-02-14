#!usr/bin/env ruby

# This program is for education purposes only
# It's a little guessing game
# It generates a random number
# And the user has 3 tries to guess the correct number

puts "!!!Guessing Game Incoming!!!"
print "What is your name? "
name = gets.chomp
puts "Hello #{name}!
We are going to play a guessing game
I will choose a number between 1 and 10
and you will have 3 chances to guess it.
Good luck, traveller!"
number = rand(10) + 1
puts "I have now chosen a number"

i=0
while i < 3
  print "Guess #{i + 1}: "
  input = gets.chomp.to_i

  if input == number
    puts "You have guessed correctly!"
    break
  elsif input < number
    puts "You have to guess higher"
  elsif input > number
    puts "You have to guess lower"
  end

  i += 1
end

puts "The game is now finished
Thanks for playing along!"

exit