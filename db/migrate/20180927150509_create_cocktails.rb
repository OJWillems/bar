class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.integer :price
      t.string :seasonality

      t.timestamps
    end
  end
end
