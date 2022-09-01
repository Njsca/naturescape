class AddReferencesToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :booking, foreign_key: true
    remove_column :chatrooms, :name
  end
end
