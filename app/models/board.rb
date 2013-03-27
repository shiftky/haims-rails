class Board < ActiveRecord::Base
  attr_accessible :name, :serial_port

  validates :name, :presence => true
  validates :serial_port, :presence => true
end
