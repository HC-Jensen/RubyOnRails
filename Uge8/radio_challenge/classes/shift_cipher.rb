# frozen_string_literal: true

class ShiftCipher
  def self.encode(msg = "", shift = 3)
    temp = msg.split('').each {|char| shift.times{char.succ!} unless char == ' ' }
    temp.join
  end
end
