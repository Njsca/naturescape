class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  has_many :equipments

  attr_accessor :message

  enum status: {
    pending: 0,
    accepted: 1,
    rejected: 2
  }
end
