def dice_game
  roll = lambda { rand(6) + 1 }
    
  p1_score = 0
  p2_score = 0
    
  loop do
    p1_roll = roll.call + roll.call
    p2_roll = roll.call + roll.call
    
    puts "You rolled #{p1_roll}. Player 2 rolled #{p2_roll}."
    p1_score += 1 if p1_roll > p2_roll
    p2_score += 1 if p2_roll > p1_roll
    puts "Your score is #{p1_score}. Player 2 score is #{p2_score}"
    
    if p1_score == 2
      puts "You win!"
      return true
    elsif p2_score == 2
      puts "You lose!"
      return false
    end
  end
end

dice_game