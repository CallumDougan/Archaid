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

  def show_board
    @board
  end

  def create_move(row, column)
    piece = @pieces[ number_of_turns % 2 ]
    @match.moves.create(row: row, column: column, piece: piece)
    #winchecking
    
  end 

  def refresh_board
    moves = @match.moves
    moves.each do |move|
      @board[move.row][move.column] = move.piece if move.row && move.column
    end
  end

end