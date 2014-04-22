require_relative 'player'

class Board

  def initialize
    @board_position = { "A1" => "","A2" => "", "A3" => "", "B1" => "", "B2" => "", "B3" => "", "C1" => "","C2" => "", "C3" => ""}
  end

  def start
    create_players
    display_board
    play_game
  end

  def create_players
    print "Enter player1 name : "
    name = gets.chomp    
    @player1 = Player.new(name,"O")
    print "Enter player2 name : "
    name = gets.chomp    
    @player2 = Player.new(name,"X")
  end

  def display_board
    puts "   A        B        C"
    puts "1 " + @board_position["A1"] + "     |   " + @board_position["B1"] + "     |   " + @board_position["C1"]
    puts "---------------------"
    puts "2 " + @board_position["A2"] + "     |   " + @board_position["B2"] + "     |   " + @board_position["C2"]
    puts "---------------------"
    puts "3 " + @board_position["A3"] + "     |   " + @board_position["B3"] + "     |   " + @board_position["C3"]
  end

  def play_game
    n=0   
    puts "Enter position by 1st letter is a column name ane 2nd is a row number. for ex: A1, B3, C2"
    while n<9
      if n%2 == 0
        take_chance(@player1,n)
      else
        take_chance(@player2,n)
      end  
      system "clear"          
      display_board
    
      winner = check_winner
      if winner != nil
        puts winner.name + " won a game"
        n = 9
      end 
      n = n+1
    end
  end

  def take_chance(player,n)
    begin 
      puts "#{player.name} please enter your position:"
      symbol = player.symbol      
      temp_position = gets.chomp 
      check = check_valid_position(temp_position,symbol)
    end while check!=1
  end

  def check_valid_position(temp_position,symbol)
    @board_position.each do |key,value|
      if key == temp_position
        if @board_position[key][value] != ""
          puts "This position is already take before" 
          return 0
        else
          @board_position[key] = symbol          
          return 1
        end
      end      
    end   
    puts "There is no positions like this"
    return 0
  end

  def check_winner
    position = @board_position.values
    if position[0] == position[2] && position[0] == position[1]
      winner = check_condition(position[0])  
    elsif position[3] == position[4] && position[3] == position[5]
      winner = check_condition(position[3])    
    elsif position[6] == position[7] && position[6] == position[8]
      winner = check_condition(position[6])    
    elsif position[0] == position[3] && position[0] == position[6]
      winner = check_condition(position[0])   
    elsif position[2] == position[4] && position[2] == position[7]
      winner = check_condition(position[2])    
    elsif position[1] == position[5] && position[1] == position[8]
      winner = check_condition(position[1])   
    elsif position[0] == position[4] && position[0] == position[8]
      winner = check_condition(position[0])   
    elsif position[2] == position[4] && position[2] == position[6]
      winner = check_condition(position[2])
    else
      winner = nil
    end    
  end

  def check_condition(position)
    if position == @player1.symbol
      @player1
    elsif position == @player2.symbol
      @player2
    else
      nil
    end
  end
end