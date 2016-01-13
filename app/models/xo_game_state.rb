class XoGameState
  attr_accessor :board, :pieces, :turn, :match

  def initialize(match)
    @match = match
    @board = [
      [nil,nil,nil],
      [nil,nil,nil],
      [nil,nil,nil] 
    ]
    @pieces = [:o, :x]
  end

  def show_board
    @board
  end

  def next_piece
    @pieces[ number_of_turns % 2 ]
  end

  def last_piece
    @pieces[ (number_of_turns + 1) % 2 ]
  end

  def drawn?
    number_of_turns == 9
  end

  def create_move(row, column)
    @match.moves.create(row: row, column: column, piece: next_piece)
    refresh_board()
    if has_won?(last_piece.to_s)
      declare_result('win')
    elsif drawn?
      declare_result('draw')
    end
  end 

  def refresh_board
    moves = @match.moves
    moves.each do |move|
      @board[move.row][move.column] = move.piece if move.row && move.column
    end
  end

  def number_of_turns
    @match.moves.count
  end

  def has_won?(symbol)
    if horizontal_line?(symbol, @board) ||
    vertical_line?(symbol) ||
    diagonal_line?(symbol)
      return true
    end
  end

  def horizontal_line?(symbol, board)
    board.any? do |row|
      row_has_winning_line(row, symbol)
    end
  end

  def vertical_line?(symbol)
    transp_board = @board.transpose
    horizontal_line?(symbol, transp_board)
  end

  def diagonal_line?(symbol)
    middle_piece = @board[1][1]
    return false if middle_piece != symbol
    topleft_bottomright = @board[0][0] == symbol && @board[2][2] == symbol
    bottomleft_topright = @board[2][0] == symbol && @board[0][2] == symbol
    topleft_bottomright || bottomleft_topright
  end

  def row_has_winning_line(row, symbol)
    row.all? do |square|
    square == symbol
    end
  end



  def declare_result(result)
    #updates @match.winner to reflect result (0 for draw), redirect to custom_route?
    if result == 'draw'
      @match.winner = 0
    else
      if number_of_turns.odd?
        @match.winner = @match.user_1_id
      else
        @match.winner = @match.user_2_id
      end
      # "This game was won by #{@match.winner(:name)}"
    end

    @match.game_state = "completed"
    @match.save
    # redirect_to user_path
  end

end