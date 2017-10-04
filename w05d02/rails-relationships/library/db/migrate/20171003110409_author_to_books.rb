class AuthorToBooks < ActiveRecord::Migration[5.1]
  def change
  	add_reference :books, :author, index: true
  end
end
