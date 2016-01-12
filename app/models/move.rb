class Move < ActiveRecord::Base
  enum piece: [:o, :x]
end
