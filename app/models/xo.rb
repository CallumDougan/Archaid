class Xo < ActiveRecord::Base
  belongs_to :arcade
  has_many :matches, through: :arcade
end
