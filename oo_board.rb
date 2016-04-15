require 'pry'

class Board
  attr_accessor :board

  WIN = [[1,2,3],[4,5,6],[7,8,9],
         [1,4,7],[2,5,8],[3,6,9],
         [1,5,9],[3,5,7]]

  def initialize
    @board = (1..9).to_a
  end

  def display
	  count = 0
	  3.times do |row|
	  puts @board[row * 3, 3].join(" | ")
	  end
  end

  def available_slots
		@board.select {|label| label.is_a?(Fixnum)}
  end

  def win?
    WIN.any? do |x,y,z|
      @board[x-1]==@board[y-1] && @board[y-1]==@board[z-1]
    end
  end

  def draw?
    @board.all? {|i| i.is_a?(String)}
  end

  def game_over?
 	  self.win? || self.draw?
  end
end
