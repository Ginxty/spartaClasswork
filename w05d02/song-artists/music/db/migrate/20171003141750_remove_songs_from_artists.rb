class RemoveSongsFromArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :songs, :string
  end
end
