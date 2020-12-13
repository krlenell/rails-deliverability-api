class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices, id: :uuid do |t|

      t.timestamps
    end
  end
end
