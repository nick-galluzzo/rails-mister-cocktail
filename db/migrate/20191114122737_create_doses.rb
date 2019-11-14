class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.text :description, null: false
      t.references :cocktail, foreign_key: true, unique: true
      t.references :ingredient, foreign_key: true, unique: true

      t.timestamps
    end
  end
end
