require "./Player.rb"
require "./Question.rb"
require "./game.rb"


g1 = Game.new

while g1.running
g1.take_turn
g1.score
g1.switch_players
end
