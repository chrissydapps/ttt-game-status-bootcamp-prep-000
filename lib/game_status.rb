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
  WIN_COMBINATIONS.each do |win_combination|
    # win_index_1 = win_combination[0]
    # win_index_2 = win_combination[1]
    # win_index_3 = win_combination[2]
    # position_1 = board[win_index_1]
    # position_2 = board[win_index_2]
    # position_3 = board[win_index_3]
    # WIN_COMBINATIONS.select {|win_combination| (position_1 == "X" && position_2 == "X" && position_3 == "X")}
  end
end

def full?(board)
  board.all? {|token| (token != " " || token != nil)}
end

def draw?(board)
  (full?(board) && won?(board) == false) ? true : false
end

def over?(board)
  (won?(board).is_a?(Array) || draw?(board) || full?(board)) ? true : false
end

def winner(board)
  if !(full?(board) || draw?(board))
    winner_combo = won?(board)
    winner_index = winner_combo.detect{|index| index.between?(0, 8)}
    board[winner_index]
  end
end
