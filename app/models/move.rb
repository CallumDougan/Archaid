class Move < ActiveRecord::Base
  belongs_to :match
  enum piece: [:o, :x]
end
