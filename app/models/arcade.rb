class Arcade < ActiveRecord::Base
  has_many :matches
  has_one :xo  
  has_one :coinflip

  def games
    [xo, coinflip]
  end
end
