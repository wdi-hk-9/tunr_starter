class AddInstrumentToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :instruments, :string
    remove_column :artists, :date_of_birth
    #rename_column :artists, :old_column, :new_column
  end
end

