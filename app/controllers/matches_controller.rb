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
    what_type = params[:game]
    #case statement, game name (e.g, 'xo')
    if what_type == "xo"
      @match.game_type = "xo"
    elsif what_type == "coinflip"
      @match.game_type = "coinflip"
    end
    @match.save
  end

  private

  def match_params
    params.require(:match).permit(:user_1_id, :user_2_id, :game_type, :arcade_id, :result, :game_state)
  end

end
