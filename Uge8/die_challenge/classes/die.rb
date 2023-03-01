class Die
  attr_reader :value

  def initialize
    roll
  end

  def roll
    @value = rand(6) + 1
  end
end