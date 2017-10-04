class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :books
      t.integer :net_worth
      t.date :bob

      t.timestamps
    end
  end
end
