class MatchesController < ApplicationController

  def show
    @match = Match.find(params[:id])
    @game_state = XoGameState.new(@match)
    @game_state.refresh_board
  end

  def index
    @matches = Match.all
  end

  def place_piece
    @match = Match.find(params[:match_id])  
    @game_state = XoGameState.new(@match)
    @game_state.create_move(params[:row], params[:column])
    redirect_to match_path(@match)
  end

  def create
    @match = Match.create(match_params)
    what_type = params[:game]
    if what_type == "xo"
      @match.game_type = "xo"
    elsif what_type == "coinflip"
      @match.game_type = "coinflip"
    end
    @match.game_state = "playing"
    @match.save
    redirect_to match_path(@match.id)
  end

  private

  def match_params
    params.require(:match).permit(:user_1_id, :user_2_id, :game_type, :arcade_id, :result, :game_state)
  end

end
