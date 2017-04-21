class Gameroom < ApplicationRecord
  has_many :gameroom_users
  has_many :users , through: :gameroom_users
  belongs_to :user, optional: true
end
