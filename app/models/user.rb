class User < ApplicationRecord
  belongs_to :game_room, optional:true
  has_many :gameroom_users
  has_many :gamerooms, through: :gameroom_users
  has_many :gamerooms
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
