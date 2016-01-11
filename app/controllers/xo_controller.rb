class XoController < ApplicationController
  belongs_to :arcade
  has_many :matches, through: :arcade
end
