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
  win_index = []
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.select{|index| index.is_a?(Number)}
    win_index << 

  end
end

def full?(board)
  board.all? {|token| (token != " " || token != nil)}
end

def draw?(board)
  (full?(board) && won?(board) == false) ? true : false
end

def over?(board)
  (won?(board).is_a(Array) || draw?(board) || full?(board)) ? true : false
end

def winner(board)
  if !(full?(board) || draw?(board))
    winner_combo = won?(board)
    winner_index = winner_combo.detect{|index| index.between?(0, 8)}
    board[winner_index]
  end
end
