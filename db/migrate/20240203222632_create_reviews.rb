class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end

    add_index :reviews, :rating
  end
end
