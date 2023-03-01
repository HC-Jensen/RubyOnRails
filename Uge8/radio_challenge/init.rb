#!usr/bin/env ruby

require_relative 'classes/radio'
require_relative 'classes/secure_radio'
require_relative 'classes/shift_cipher'

sr = SecureRadio.am
puts sr.status
sr.play

puts "-----------------"

fm = Radio.fm
puts fm.status

fm.volume = 8
puts fm.status

fm.volume = 15
puts fm.status

fm.freq = 109
puts fm.status

fm.freq = 99
puts fm.status

fm.freq = 109
puts fm.status

puts "-----------------"

am = Radio.am
puts am.status

am.volume = 8
puts am.status

am.volume = 15
puts am.status

am.freq = 6666
puts am.status

am.freq = 666
puts am.status

am.freq = 6666
puts am.status