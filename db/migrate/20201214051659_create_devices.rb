class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.text :phone_number null:false
      t.text :carrier null:false
      t.datetime :disabled_at, :default => nil

      t.timestamps
    end
  end
end
