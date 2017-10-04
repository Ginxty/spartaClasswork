class AddAlbumToSong < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :album, :string
  end
end
