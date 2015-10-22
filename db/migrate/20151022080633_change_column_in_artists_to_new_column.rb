class ChangeColumnInArtistsToNewColumn < ActiveRecord::Migration
  def change
    rename_column :artists, :instruments, :wind_bag
  end
end
