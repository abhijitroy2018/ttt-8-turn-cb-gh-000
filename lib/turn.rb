def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  # input_int = input.to_i
  # index = input_int - 1
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index,"X")
    display_board(board)
  else
    turn(board)
  end
end
def input_to_index(input)
  input_int = input.to_i
  input_int - 1
end
def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
      false
    else
      true
    end
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, value="X")
  board[index] = value
end
