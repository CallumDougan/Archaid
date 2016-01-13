class Match < ActiveRecord::Base
  has_one :user, foreign_key: "user_1_id", class_name: "User"
  has_one :other_user, foreign_key: "user_2_id", class_name: "User"
  has_many :moves
  belongs_to :arcade

  def player_finder(user)
    User.find(self.user)
  end



end
