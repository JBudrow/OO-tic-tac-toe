require 'pry'

require "./oo_board"
require "./oo_game"
require "./oo_player"
# require "./oo_computer"

# OBJECT ORIENTED TIC-TAC-TOE
# 3.0

#  1 | X | 3
# ---|---|---
#  O | X | 6
# ---|---|---
#  7 | 8 | O

game = Game.new
game.play
