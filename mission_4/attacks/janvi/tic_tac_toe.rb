require_relative 'board'
begin
  board = Board.new
  board.start()
  puts "Do you want to play game again?(Y/N)"
  input = gets.chomp
end while input != "N"
