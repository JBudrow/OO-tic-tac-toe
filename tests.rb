require "minitest/autorun"
require "pry"

require "./oo_player"
require "./oo_board"
require "./oo_game"
require "./oo_computer"

class HumanTests < MiniTest::Test
  def test_player_knows_their_label
    greedo = Player.new
    greedo.stub :gets, "X" do
      greedo.label
    end
    assert greedo.label == "X"
  end

  def test_can_make_a_move
    han = Player.new
    han.stub :gets, "3" do
      choice = han.take_turn
      assert slot.is_a?(Fixnum)
      assert (1..9).include?(choice)
    end
  end

  def test_moves_cant_be_words
    leia = Player.new
    leia.stub :gets, "nerfherder" do
      move = leia.make_move
      assert move.is_a?(Fixnum)
      assert (1..9).include?(move)
    end
  end

  def test_cannot_make_illegal_mvoe
    ackbar = Player.new
    ackbar.stub :gets, "2" do
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
end
