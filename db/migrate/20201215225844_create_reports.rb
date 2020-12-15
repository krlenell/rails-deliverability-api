class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports, id: :uuid do |t|
      t.references :device, null: false, foreign_key: true, type: :uuid
      t.text :sender, null:false
      t.text :message, null:false

      t.datetime :created_at, null:false
    end
  end
end
