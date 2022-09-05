class Chatroom < ApplicationRecord
  belongs_to :hike
  has_many :messages, dependent: :destroy
end
