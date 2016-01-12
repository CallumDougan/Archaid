class MatchesController < ApplicationController

  def show
    @match = Match.find(params[:id])
    @board = XoGameState.new(@match)
  end

  def place_piece
    raise
  end

end
