class AddDescriptionDevice < ActiveRecord::Migration
  def up
    add_column :devices, :description, :string
  end

  def down
  end
end
