class XoGameState
  attr_accessor :board, :pieces, :turn

  def initialize
    @board = [
      [nil,nil,nil],
      [nil,nil,nil],
      [nil,nil,nil] 
    ]
    @pieces = [:o, :x]
    @turn = 0
  end

  def show_board
    @board
  end

  def update_board (row, column, piece)
    @board[row][column] = piece
  end

end