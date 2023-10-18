class Player
  attr_accessor :lives, :name
  def initialize(n)
    @lives = 3
    @name = "Player #{n}"
  end

  def wrong
    self.lives -= 1
  end

end
