# require "./Player.rb"
# require "./Question.rb"

class Game
  attr_accessor :current_player, :players, :current_player_index, :running

  def initialize
    @players = [Player.new(1), Player.new(2)]
    @current_player_index = 0
    @current_player = players[0]
    @running = true
  end

  def take_turn
    question = Question.new
    print "#{current_player.name}: "
    if !question.ask
      puts "wow! you got it wrong..."
      current_player.wrong
    else
      puts "That's right! Good job."
    end
  end

  def switch_players
    self.current_player_index = current_player_index == 0 ? 1 : 0
    self.current_player = players[current_player_index]
  end

  def score
    p1_score = "#{self.players[0].lives}/3"
    p2_score = "#{self.players[1].lives}/3"
    puts "Player 1 has #{p1_score} lives, Player 2 has #{p2_score} lives"
    players.each do |player|
      if player.lives == 0
        winner = players.find {|player| player.lives > 0}
        puts "#{player.name} ran out of lives!"
        puts "Congratulations #{winner.name}! You Win!"
        self.running = false

      end
    end
  end
end
