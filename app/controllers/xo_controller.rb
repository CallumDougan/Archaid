class XoController < ApplicationController


  def show
    @board = Xo.new
  end

end
