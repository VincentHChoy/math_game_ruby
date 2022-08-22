class Game
  attr_accessor :player1,:player2
  def initialize()
    @player1 = Player.new('1')
    @player2 = Player.new('2')
    @player_turn = @player2
  end

  def toggleturn()
    if @player_turn.name == '1'
      @player_turn = @player2
    else
      @player_turn = @player1
    end         
  end

  def start_game()
    while @player_turn.lives > 0 

      toggleturn()
 
      # ASK QUESTION
      q = Question.new()
      puts "Player #{@player_turn.name}: #{q.ask_question}"
      
      #gets player input
      player_answer = gets.chomp.to_i

      #validate answer
      if player_answer == q.get_answer
        puts "Player #{@player_turn.name}: YES! You are correct."
      else
        puts "Seriously? No"
        @player_turn.lives -= 1
      end

      #display game score
      puts "P1: #{player1.lives}/3 vs P2:#{player2.lives}/3"

      # check for game over

      if @player_turn.lives == 0
        puts "-----GAME OVER-----"
        toggleturn()
        puts "Player #{@player_turn.name} wins with a score of #{@player_turn.lives}/3"
        puts "Good bye!"
        toggleturn()

      else
        puts "-----NEW TURN-----"
      end
      # check if game is over



    end
  end
end

