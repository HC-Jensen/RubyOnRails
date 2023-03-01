#!usr/bin/env ruby

require_relative 'classes/dice_set'

puts "This is a die roller with two dice
To roll the dice enter: 'r'
To quit enter : 'q'"

input = "r"
dice = DiceSet.new


while input.capitalize != "Q"
  unless input.capitalize == "R"
    print "Please enter 'r' or 'q': "
    input = gets.chomp
    next
  end

  dice.roll
  puts dice.display

  print "Please enter 'r' or 'q': "
  input = gets.chomp
end