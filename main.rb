require './player'
require './question'
require './game'

game = Game.new

puts "This is a two player MATH GAME"
puts "First player:"
playerA_name = game.get_player_name
puts "Second player:"
playerB_name = game.get_player_name

playerA = Player.new(playerA_name)
playerB = Player.new(playerB_name)

puts "LETS GET IT ON"
puts "#{playerA.name} and #{playerB.name} will battle it out in a MATH DUEL"

while playerA.hp != 0 && playerB.hp != 0
  puts "----- NEW TURN -----"
  game.update_turn
  game.update_player playerA, playerB

  num1 = Question.generate_num
  num2 = Question.generate_num
  operator = Question.generate_operator
  operator_string = Question.operator_to_s operator

  puts "#{game.current_player.name}: What does " + num1.to_s + " " + operator_string + " " + num2.to_s + " equal?"
  print "> "

  answer = gets.chomp.to_i
  solution = Question.get_solution num1, num2, operator
  correct = Question.is_correct? solution, answer

  if correct
    puts "Awesome job #{game.current_player.name}"
  else
    puts "LOL #{game.current_player.name} loses 1 HP"
    game.current_player.lose_hp
  end
  game.game_status playerA, playerB
end

game.update_turn
game.update_player playerA, playerB

game.game_over
