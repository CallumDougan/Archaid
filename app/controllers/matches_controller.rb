class MatchesController < ApplicationController

  def show
    @match = Match.find(params[:id])
    @board = XoGameState.new(@match)
  end

  def index
    @matches = Match.all
  end

  def place_piece
    raise
  end

  def create
    @match = Match.create(match_params)
  end

  private

  def match_params
      params.require(:match).permit(:user_1_id, :user_2_id, :game_id, :arcade_id, :result, :game_state)
  end

end
