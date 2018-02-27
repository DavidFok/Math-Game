require_relative 'intro'
require_relative 'print_status'

class Math_Game
  def initialize
    @players = [{id: 1, hp: 3, pts: 0}, {id: 2, hp: 3, pts: 0}]
    @play_count = 0
    @game_on = true


    while @game_on do
      play
    end
  end


  private # ================== Logic Begins Here ========================

  def play
    #introduction only appears if this is the first turn
    if @play_count == 0
      intro
    end

    puts "Player #{current_player + 1}", "\n"


    if question
      @players[current_player][:pts] += 1
      print_status(true)
      @play_count += 1
    else
      @players[current_player][:hp] -= 1
      if @players[current_player][:hp] == 0
        print_status('game_over')
        @game_on = false
      else
        print_status(false)
        @play_count += 1
      end
    end
  end


  def current_player
    return @play_count % 2
  end


  def question
    num1 = rand(80)
    num2 = rand(80)
    operators = [:+, :-, :*, :/]
    operator = operators.sample

    #check to ensure there are no zeroes
    if num1 == 0
      num = 1
    end
    if num2 == 0
      num2 = 1
    end

    answer = num1.send(operator, num2)


    if operator == :/
      puts "#{num1} #{operator} #{num2} rounded DOWN to the nearest integer equals ----->>>"
    else
      puts "#{num1} #{operator} #{num2} equals ----->>>"
    end

    input_answer = $stdin.gets.to_i

    if answer == input_answer
      return true
    else
      return false
    end
  end


  def print_pts
    puts "Player One: Points: #{@players[0][:pts]} | Lives Remaining: #{@players[0][:hp]}"
    puts "Player Two: Points: #{@players[1][:pts]} | Lives Remaining: #{@players[1][:hp]}"
  end
end

Math_Game.new

