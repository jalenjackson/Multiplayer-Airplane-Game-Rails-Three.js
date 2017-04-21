class GameroomUser < ApplicationRecord
  belongs_to :gameroom
  belongs_to :user
end
