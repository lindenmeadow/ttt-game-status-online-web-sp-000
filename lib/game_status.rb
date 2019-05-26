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
  WIN_COMBINATIONS.detect {|i| i[0] == "X" && i[1] == "X" && i[2] == "X"} || WIN_COMBINATIONS.detect {|i| i[0] == "O" && i[1] == "O" && i[2] == "O"} || 
end


def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end


def draw?(board)
  
end

def over?(board)
  
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
