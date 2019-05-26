def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  win_combination = WIN_COMBINATIONS
  win_combination.each do |i|
    if i.all? == "X" || i.all? == "O"
      return true
    else
      return false
    end
  end
end


def full?(board)
  board.each do |i|
    if i.all? == "X" || i.all? == "O"
      return true
    elsif i == " " || i == "" || i == nil
      return false
    end
  end
end


def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif ( !won?(board) && !full?(board) ) || won?(board)
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  win_combination = WIN_COMBINATIONS
  win_combination.each do |i|
    if i.all? == "X"
      return "X"
    elsif i.all? == "O"
      return "O"
    end
  end
end
