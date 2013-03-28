class Device < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :ir_signal

  validates :name, :presence => true
end
