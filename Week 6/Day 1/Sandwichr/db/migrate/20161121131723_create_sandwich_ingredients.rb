class CreateSandwichIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwich_ingredients do |t|
      t.references :sandwich, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
