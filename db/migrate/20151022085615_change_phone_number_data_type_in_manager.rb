class ChangePhoneNumberDataTypeInManager < ActiveRecord::Migration
  def change
    add_column :manager, :phone_number, :string
  end
end
