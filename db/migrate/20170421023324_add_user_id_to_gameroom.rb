class AddUserIdToGameroom < ActiveRecord::Migration[5.1]
  def change
    add_column :gamerooms, :user_id, :integer
    add_index :gamerooms, :user_id
  end
end
