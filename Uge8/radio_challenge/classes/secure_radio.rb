# frozen_string_literal: true

require_relative 'radio'
require_relative 'shift_cipher'

class SecureRadio < Radio
  def play
    encoded_song = ShiftCipher.encode(@@audio_samples.sample.to_s, 3)
    puts "The radio plays: #{encoded_song}"
  end

  def initialize(band)
    super
  end

  def self.am
    SecureRadio.new("AM")
  end

  def self.fm
    SecureRadio.new("FM")
  end
end
