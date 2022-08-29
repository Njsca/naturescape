class Equipment < ApplicationRecord
  belongs_to :booking
  validates :name, :description, :price, presence: true
end
