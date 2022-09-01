class HikeTag < ApplicationRecord
  belongs_to :hike
  belongs_to :tag
end
