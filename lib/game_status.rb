# Helper Method
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
  [2, 4, 6]
]

def won?(board)
  if board.all? {|token| token == " "}
    return false
  else
    WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
      if (position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3))
        position_1 = board[win_index_1]
        position_2 = board[win_index_2]
        position_3 = board[win_index_3]
        if position_1 == "X" && position_2 == "X" && position_3 == "X"
          return winner = [win_index_1, win_index_2, win_index_3]
        elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
          return winner = [win_index_1, win_index_2, win_index_3]
        else
          return false
        end
      end
    end
  end
end

def full?(board)
  board.all? {|token| (token == "X" || token = "O")}
end

def draw?(board)
  (full?(board) && won?(board) == false) ? true : false
end

def over?(board)
  (won?(board).is_a?(Array) || draw?(board) || full?(board)) ? true : false
end

def winner(board)
  if won?(board).is_a?(Array)
    board[won?board[0]]
  end
end
