class Question

  attr_accessor :answer

  def initialize ()
    @number1 = rand(1..10)
    @number2 = rand(1..10)
  end

  def ask_question()
    "What does #{@number1} plus #{@number2} equal"

  end

  def get_answer()
    @answer = @number1 + @number2
  end
end