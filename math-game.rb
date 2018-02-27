# The Game State
# The Game PRoces
# Player
# Move


class Math_Game
  def initialize
    @players = [1, 2]
    @current_player = @players[0]
    @game_on = true

    while @game_on do
      play
    end
  end

  def play
    puts 'Welcome to the Math Game!'
    gets
    puts 'Introduction:'
    puts 'This is a two-player game that challenges your smarts by answering math questions!'
    gets
    puts 'Goal:'
    puts 'Answer more questions correctly than your opponent.'
    gets
    puts 'But be careful! If you answer incorrectly, you lose a life!'
    gets
    puts 'And if you lose 3 lives, you DIE!!! Dun Dun Dunnnnnnn~'
    gets
    puts 'Players take turns answering questions.'
    gets
    puts 'If the player answers correctly, they earn a point!'
    gets
    puts 'The game ends when one player runs out of lives.'
    gets
    puts 'The last player standing is the winner!'
  end
end

Math_Game.new

