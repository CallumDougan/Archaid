class MatchController < ApplicationController
  has_one :user, foreign_key => "user_1_id", class_name => "User"
  has_one :other_user, foreign_key => "user_2_id", class_name => "User"
  belongs_to :match
end
