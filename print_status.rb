def print_status(status)
    if status == true
      puts "\n", "Great job!", "Press enter to continue", "\n"
      gets
      puts "\n", "------------- Curent status -------------"

      print_pts

      gets
      puts "\n", "================= NEW TURN ================="
    elsif status == false
      puts "\n", "Epic fail! You suck!!!", "Press enter to continue", "\n"
      gets
      puts "\n", "------------- Curent status -------------"

      print_pts

      gets
      puts "\n", "================= NEW TURN ================="
    else
      puts "------------- GAME OVER -------------"
      puts "\n", "           Player #{@players[current_player][:hp]} wins!", "\n"

      print_pts
    end
  end