class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :comment
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end
