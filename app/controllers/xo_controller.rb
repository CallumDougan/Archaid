require 'xogamestate'
class XoController < ApplicationController

  def show
    @board = XoGameState.new
  end

end
