class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :establishment_id
      t.integer :user_id
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
