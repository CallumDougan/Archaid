class Arcade < ActiveRecord::Base
  has_many :matches
  has_one :xo
  has_one :coinflip
end
