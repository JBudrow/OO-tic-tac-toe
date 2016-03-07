class Game
  attr_accessor :board, :player
  def initialize
    @board = Board.new
    @player = Player.new
  end

  def greet
    puts "Welcome to TIC-TAC-TOE!"
  end

  def next_turn
    @player == "X" ? "O" : "X"
  end

  def tictactoe
    display
    greet
      until game_over?(@board) do
        display
        take_turn(available_spaces)
        place_piece(choice, piece)
        next_turn
    end
  end

  def after_word
    if win?(@board)
      puts "Congratulations #{@player}!"
    else
      puts "Better luck next time #{@player}."
    end
  end
end
