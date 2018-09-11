class Game
  attr_accessor :turn, :current_player

  def initialize
    @turn = nil
    @current_player = nil
  end

  def update_turn
    case @turn
    when 0
      @turn = 1
    when 1
      @turn = 0
    when nil
      @turn = rand(2).round
    end
  end

  def update_player playerA, playerB
    if @turn == 0
      @current_player = playerA
    else
      @current_player = playerB
    end
  end

  def get_player_name
    puts "What is your name?"
    print "> "
    gets.chomp
  end

  def game_status playerA, playerB
    puts "#{playerA.name} has #{playerA.hp}/3. #{playerB.name} has #{playerB.hp}/3."
  end

  def game_over
    puts "#{@current_player.name} wins with a score of #{@current_player.hp}! Congratulations"
    puts "----- GAME OVER ----"
    puts "Good bye"
  end

end
