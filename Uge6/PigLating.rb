#!/usr/bin/env ruby

VOWELS = %w[a e i o u]

def pig_latin (word)
  array = word.chars
  first_vocal_index = array.index {|element| VOWELS.include? element}

  unless first_vocal_index == 0
    #Første bogstav er ikke vokal
    array << array[0...first_vocal_index]
    array.slice!(0...first_vocal_index)
  end

  array << 'ay'
  array.join
end

puts pig_latin(gets.chomp)