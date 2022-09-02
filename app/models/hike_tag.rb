class HikeTag < ApplicationRecord
  belongs_to :hike
  belongs_to :tag

  # scope :one_day_tag, -> { joins(:tag).where("tags.name = '1 day'") }

end


# one_day_tag.save!
# multiple_days_tag.save!
# start_date_tag.save!
# end_date_tag.save!
# dog_tag.save!
# kid_tag.save!
# beginner_tag.save!
# intermediate_tag.save!
# expert_tag.save!
# flat_tag.save!
# hill_tag.save
# mountain_tag.save!
# english_tag.save!
