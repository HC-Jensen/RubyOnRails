#!usr/bin/env ruby

require_relative 'classes/die'
require_relative 'classes/dice_set'

die = Die.new

print "Single die: "
puts die.value
print "New value after roll: "
die.roll
puts die.value

puts "----------"

dice = DiceSet.new

puts "Set of dice:"
puts dice.display
puts "New values after roll:"
dice.roll
puts dice.display