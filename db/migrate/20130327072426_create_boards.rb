class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :serial_port

      t.timestamps
    end
  end
end
