class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :matches

  before_save :default_values

  def initialize
    @image = :image
  end

  def default_values
    self.image ||= 'default_av.gif'
  end

  def user_image
    @image
  end


end
