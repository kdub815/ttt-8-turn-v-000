def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if index < 0 || index > 8
      false
    elsif position_taken?(board, index)
      false
    else true
    end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " "
    false
  elsif board[index] == nil
    false
  else false
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

index = input_to_index(user_input)

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
      puts "Please enter 1-9:"
      break
    end
  end
end
