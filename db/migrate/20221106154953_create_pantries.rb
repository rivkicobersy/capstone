class CreatePantries < ActiveRecord::Migration[7.0]
  def change
    create_table :pantries do |t|
      t.integer :ingredient_id
      t.integer :user_id
      t.string :amount

      t.timestamps
    end
  end
end
