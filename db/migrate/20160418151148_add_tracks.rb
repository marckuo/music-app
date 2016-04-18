class AddTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :author
      t.string :artist
      t.string :song
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
