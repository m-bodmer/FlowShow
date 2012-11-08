class Software < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name,  :presence => true
  validates :description, :presence => true

  has_many :plugins, :dependent => :destroy
end
