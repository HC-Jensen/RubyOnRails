require_relative 'die'
# Out commented things are old
# versions of doing the same thing
# Newer things are the solution
# from the guide
class DiceSet
  def initialize
    @dice_array = [Die.new, Die.new]
  end

  def roll
    # @dice[0].roll
    # @dice[1].roll

    @dice_array.each {|dice| dice.roll}
  end

  def display
    #[@dice_array[0].value, @dice_array[1].value]

    @dice_array.map { |dice| "[ #{dice.value} ]" }.join(" - ")
  end
end