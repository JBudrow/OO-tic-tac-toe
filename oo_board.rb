class Board
  attr_reader :board
  WIN = [[1,2,3],[4,5,6],[7,8,9],
         [1,4,7],[2,5,8],[3,6,9],
         [1,5,9],[3,5,7]]

  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
  end

  def display
    puts "#{@board[0]}#{@board[1]}#{@board[2]}
          #{@board[3]}#{@board[4]}#{@board[5]}
          #{@board[6]}#{@board[7]}#{@board[8]}"
  end

  def available_spaces
    @board.select {|o| o.is_a?(String)}
  end

  def place_piece(choice, piece)
    @board[choice-1] = piece
  end

  def win?
    @board.each do |x,y,z|
      @board==[x-1] && @board==[y-1] && @board==[z-1]
    end
  end

  def draw?
    @board.any? {|i| i.include?(Fixnum)}
  end

  def game_over?
    win?(@board) || draw?(@board)
  end
end
