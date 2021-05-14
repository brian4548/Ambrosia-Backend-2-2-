class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :location
      t.string :points
      t.string :category
      t.string :image
      t.integer :city_id

      t.timestamps
    end
  end
end
