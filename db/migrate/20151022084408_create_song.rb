class CreateSong < ActiveRecord::Migration
  def change
    create_table :song do |t|
      t.string :song_title
      t.integer :duration
      t.integer :year_of_release
      t.string :albulm_title

    end
  end
end
