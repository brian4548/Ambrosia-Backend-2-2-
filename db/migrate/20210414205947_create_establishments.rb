class CreateEstablishments < ActiveRecord::Migration[6.0]
  def change
    create_table :establishments do |t|
      t.integer :user_id
      t.integer :review_id

      t.timestamps
    end
  end
end
