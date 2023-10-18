class Question
  attr_accessor :first_term, :second_term
  RANGE = 1..20

  def initialize
    @first_term = rand(RANGE)
    @second_term = rand(RANGE)
  end

  def ask
    puts "What is #{@first_term} plus #{second_term}?"
    answer = gets
    answer.to_i == @first_term + @second_term
  end

end

class Player
  attr_accessor :lives, :name
  def initialize(n)
    @lives = 3
    @name = "Player #{n}"
  end

  def wrong
    self
  end
end

q1 = Question.new
puts q1.ask
