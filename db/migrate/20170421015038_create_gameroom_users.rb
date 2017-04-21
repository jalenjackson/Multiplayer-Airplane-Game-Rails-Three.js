class CreateGameroomUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :gameroom_users do |t|
      t.references :gameroom, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
