
class Game
  def initialize
    @player = Player.new
    @board = Board.new
  end

  def greet
    puts 'Welcome to TIC-TAC-TOE!'
  end

  def rotate(current)
    current == 'X' ? 'O' : 'X'
  end

  def play
    greet
    current = @player.label
    until @board.win? || @board.draw? do
      @board.display
      move = @player.take_turn(@board)
      @board.board[move-1] = current
      current = rotate(current)
    end
    after_word
    end
  end

  def after_word
    if @board.win?
      puts "Game over. #{@player.label} is victorious!"
    end
  end
