class CreatePenguins < ActiveRecord::Migration[5.1]
  def change
    create_table :penguins do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :colour

      t.timestamps
    end
  end
end
