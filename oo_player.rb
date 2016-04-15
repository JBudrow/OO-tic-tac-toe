require 'pry'

class Player
  def initialize
    @player = 'X'
  end

  def label
    @player
  end

  def take_turn(board)
    print 'Choose a slot [1-9]: '
    choice = gets.chomp.to_i
    slot = board.available_slots
    until slot.include?(choice)
      puts "You have to choose an available position"
      choice = gets.chomp.to_i
    end
    choice
  end
end
