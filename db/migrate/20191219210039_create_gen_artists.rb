class CreateGenArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :gen_artists do |t|
      t.references :artist, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
