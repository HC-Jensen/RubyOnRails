#!usr/bin/env ruby

require 'date'

puts "--------------------
|Birthdate Analysis|
--------------------"

print "Enter the year you were born: "
year = gets.chomp.to_i
print "Enter the month you were born: "
month = gets.chomp.to_i
print "Enter the day you were born: "
day = gets.chomp.to_i

birthdate = Date.new(year, month, day)

weekdays = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]

day_of_the_week = weekdays[birthdate.wday]
day_of_the_year = birthdate.yday
week_of_the_year = birthdate.cweek
leap_year = birthdate.leap? ? "" : "not "

puts"
-------------------------------
You were born on a #{day_of_the_week}.
It was the #{week_of_the_year} week of the year.
It was the #{day_of_the_year} day of the year.
It was #{leap_year}a leap year.
-------------------------------"
