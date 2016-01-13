class XoGameState
  attr_accessor :board, :pieces, :turn

  def initialize(match)
    @match = match
    @board = [
      [nil,nil,nil],
      [nil,nil,nil],
      [nil,nil,nil] 
    ]
    @pieces = [:o, :x]
  end

  def number_of_turns
    @match.moves.count
  end

  def draw_check
   number_of_turns == 9
 end

 def horizontal_win
  @board.each do |row|
    row.all? do |place|
      if place == @pieces[0]
        winner = @pieces[0]
      elsif place = @pieces[1]
        winner = @pieces[1]
      end
    end
  end
  winner
end

def vertical_win
  @board.transpose.each do |column|
    column.all? do |place|
      if place == @pieces[0]
        winner = @pieces[0]
      elsif place == @pieces[1]
        winner = @pieces[1]
      end
    end
  end
  winner
end

def diagonal_win
  middle_place = @board[1][1]
  if middle_place !nil && middle_place == @board[0][0] && middle_place == @board [2][2]
    winner = middle_place
  elsif middle_place ! nil && middle_place == @board[2][0] && middle_place == @board[0][2]
    winner = middle_place
  end
  winner
end

def win_check
  if horizontal_win?
    return true
  elsif vertical_win?
    return true
  elsif diagonal_win?
    return true
  else
    return false
  end
end

def end_check
  if draw_check?
#note result, redirect_to custom route?
elsif win_check?
#note result, redirect_to custom route?
end
end

def show_board
  @board
end

def create_move(row, column)
  piece = @pieces[ number_of_turns % 2 ]
  @match.moves.create(row: row, column: column, piece: piece)
  end_check
end 

def refresh_board
  moves = @match.moves
  moves.each do |move|
    @board[move.row][move.column] = move.piece if move.row && move.column
  end
end

end