#!usr/bin/env ruby

require './classes/footballer'

footballer = Footballer.new

print "Enter the name of the footballer: "
footballer.set_name(gets.chomp.to_i)

puts footballer.get_price