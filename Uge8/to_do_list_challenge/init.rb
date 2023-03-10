#!usr/bin/env ruby

require_relative 'classes/to_do_list'

list = ToDoList.new(%w[dishes nap laundry vacuum])

puts
puts "First: " + list.first
puts
puts "Longest: " + list.find {|item| item.length > 6}
puts
puts "Original list:"
puts list.map {|item| "> #{item.capitalize}"}

list << "sweep"
puts
puts "Updated list:"
puts list.map {|item| "> #{item.capitalize}"}

puts
puts "Sorted:"
list.sort.each_with_index do |item, i|
  puts "#{i+1}: #{item}"
end