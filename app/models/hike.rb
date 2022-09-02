class Hike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :hike_tags, dependent: :destroy
  has_many :tags, through: :hike_tags
  validates :title, :date, :location, :description, presence: true
  has_many_attached :photos

  scope :one_day, -> { where("duration = '1 day'" ) }
  scope :multiple_days, -> { where("duration = 'multiple days'" ) }
  scope :dog_friendly, -> { where("buddy = 'dog'" ) }
  scope :kid_friendly, -> { where("buddy = 'kid'" ) }
  scope :beginner, -> { where("level = 'beginner'" ) }
  scope :intermediate, -> { where("level = 'intermediate'" ) }
  scope :expert, -> { where("level = 'expert'" ) }
  scope :flat, -> { where("terrain = 'flat'" ) }
  scope :hills, -> { where("terrain = 'hills'" ) }
  scope :mountains, -> { where("terrain = 'mountains'" ) }
  scope :english, -> { where("language = 'english'" ) }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
