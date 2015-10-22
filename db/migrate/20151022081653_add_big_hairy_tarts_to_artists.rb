class AddBigHairyTartsToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :them_apples, :boolean
  end
end
