class AddNotNullToDevice < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:devices, :phone_number, false)
    change_column_null(:devices, :carrier, false)
  end
end
