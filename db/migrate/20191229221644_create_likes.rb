class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :count
      t.references :user, null: false, foreign_key: true
      t.references :meme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
