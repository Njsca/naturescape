class Hike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, :date, :location, :description, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
