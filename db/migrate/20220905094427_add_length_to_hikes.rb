class AddLengthToHikes < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :length, :string
  end
end
