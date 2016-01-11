class Xo < ActiveRecord::Base
  require 'xogamestate'
  belongs_to :arcade
  has_many :matches, through: :arcade
end
