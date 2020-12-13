class ChangeDevicesName < ActiveRecord::Migration[6.1]
  def change
    rename_table :devices, :device
  end
end
