class Tag < ActiveRecord::Base
  belongs_to :software
  attr_accessible :name
end
