class CreateIrSignals < ActiveRecord::Migration
  def change
    create_table :ir_signals do |t|
      t.string :name
      t.string :data
      t.integer :device_id

      t.timestamps
    end
  end
end
