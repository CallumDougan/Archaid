class XoController < ApplicationController
  def initialize
    @board = [
      [nil,nil,nil],
      [nil,nil,nil],
      [nil,nil,nil] 
                    ]
    @pieces = [:o, :x]
    @turn = 0
  end
end
