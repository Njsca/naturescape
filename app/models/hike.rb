class Hike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, :date, :location, :description, presence: true
end
