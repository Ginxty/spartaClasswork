class RemoveAlbumFromArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :album, :string
  end
end
