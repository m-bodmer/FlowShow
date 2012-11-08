class Plugin < ActiveRecord::Base
  belongs_to :software
  attr_accessible :description, :name, :url
end
