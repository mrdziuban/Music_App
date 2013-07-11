class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_name
      t.integer :band_id
      t.text :cover_art_link

      t.timestamps
    end
  end
end
