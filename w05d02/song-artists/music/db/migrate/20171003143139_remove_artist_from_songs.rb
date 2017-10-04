class RemoveArtistFromSongs < ActiveRecord::Migration[5.1]
  def change
    remove_column :songs, :artist, :string
  end
end
