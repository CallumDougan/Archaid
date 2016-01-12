class XoGameState
  attr_accessor :board, :pieces, :turn

  def initialize(match)
    @board = [
      [nil,nil,nil],
      [nil,nil,nil],
      [nil,nil,nil] 
    ]
    @pieces = [:o, :x]
    @turn = 0
    match.moves.each
  end

  def turn_count
    @turn += 1
  end

  def show_board
    @board
  end

  def update_board (row, column)
    @board[row][column] = @pieces[ @turn % 2 ]
    redirect_to xo_path
  end 

end