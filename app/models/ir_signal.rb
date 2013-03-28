class IrSignal < ActiveRecord::Base
  attr_accessible :data, :device_id, :name

  belongs_to :device

  validates :name, :presence => true
  validates :data, :presence => true
end
