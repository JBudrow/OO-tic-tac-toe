class Player
  attr_reader :piece, :choice
  def initialize
    @piece = piece
    @choice = choice
  end

  def choose_piece
    puts "Would you like to be 'X' or 'O' >> "
    @piece = gets.chomp.upcase
    until ["X","O"].include?(@piece)
      puts "Invalid input, please only choose 'X' or 'O' >> "
      @piece = gets.chomp.upcase
    end
    @piece
  end

  def take_turn(available_spaces)
    @choice = gets.chomp.to_i
    until available_spaces.include?(@choice)
      puts "Invalid space, try again >> "
      @choice = gets.chomp.to_i
    end
    @choice
  end
end
