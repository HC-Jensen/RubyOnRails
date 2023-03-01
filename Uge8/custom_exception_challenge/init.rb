#!usr/bin/env ruby

require 'date'

class OutOfBoundsException < StandardError
  def value
    @value.to_s
  end
  def initialize(msg = "Argument was out of bounds", value)
    @value = value
    super(msg)
  end
end

def valid_input(year, month, day)
  if (1900..Time.now.year).include?(year)
    puts "Year checks out"
    if (1..12).include?(month)
      puts "Month checks out"
      if (1..31).include?(day)
        puts "Day checks out"
      else
        raise OutOfBoundsException.new(day)
      end
    else
      raise OutOfBoundsException.new(month)
    end
  else
    raise OutOfBoundsException.new(year)
  end
end

puts "--------------------
|Birthdate Analysis|
--------------------"

print "Enter the year you were born: "
year = gets.chomp.to_i
print "Enter the month you were born: "
month = gets.chomp.to_i
print "Enter the day you were born: "
day = gets.chomp.to_i

begin
  birthdate = Date.new(year, month, day) unless valid_input(year, month, day)
rescue OutOfBoundsException => e
  puts e.message + ': ' + e.value
  exit!
rescue => e
  puts e.message
  exit!
end


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
