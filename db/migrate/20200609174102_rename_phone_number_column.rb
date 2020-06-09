class RenamePhoneNumberColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :suppliers, :phonenumber, :phone_number
  end
end
