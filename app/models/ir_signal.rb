class IrSignal < ActiveRecord::Base
  attr_accessible :data, :device_id, :name

  validates :name, :presence => true
  validates :data, :presence => true
end
