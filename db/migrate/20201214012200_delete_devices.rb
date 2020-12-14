class DeleteDevices < ActiveRecord::Migration[6.1]
  def change
    drop_table(:devices)
  end
end
