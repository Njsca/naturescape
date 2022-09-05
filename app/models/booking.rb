class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  has_many :equipments

  attr_accessor :message
end
