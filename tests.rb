require "minitest/autorun"
require "pry"

require "./oo_player"
require "./oo_board"
require "./oo_game"
require "./oo_computer"

class HumanTests < MiniTest::Test
  def test_player_knows_their_piece
    greedo = Player.new
    greedo.stub :gets, "X" do
      greedo.choose_piece
    end
    assert greedo.piece == "X"
  end

  def test_can_make_a_move
    han = Human.new
    han.stub :gets, "3" do
      move = han.make_move
      assert move.is_a?(Fixnum)
      asser (1..9).include?(move)
    end
  end

  def test_moves_cant_be_words
    leia = Human.new
    leia.stub :gets, "nerfherder" do
      move = leia.make_move
      assert move.is_a?(Fixnum)
      assert (1..9).include?(move)
    end
  end

  def test_cannot_make_illegal_mvoe
    ackbar = Human.new
    ackbar.stub :gets, "12" do
      move = ackbar.make_move([2,5,7])
      assert [2,5,7].include?(move)
    end
  end
end

class GameTests < MiniTest::Test
  def setup
    player1 = Player.new
    player2 = Computer.new
    @game = Game.new(player1, player2)
  end

  def test_can_whatever_games_too
    @game.take_turn
    @game.whatever
    assert @game.turn_count != 0
  end
end
