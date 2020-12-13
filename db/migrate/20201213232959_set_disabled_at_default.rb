class SetDisabledAtDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:device, :disabled_at, nil)
  end
end
