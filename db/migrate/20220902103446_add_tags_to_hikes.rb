class AddTagsToHikes < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :duration, :string
    add_column :hikes, :buddy, :string
    add_column :hikes, :level, :string
    add_column :hikes, :terrain, :string
  end
end
