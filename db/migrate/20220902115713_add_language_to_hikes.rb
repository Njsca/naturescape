class AddLanguageToHikes < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :language, :string
  end
end
