class Software < ActiveRecord::Base
  attr_accessible :description, :name, :tags_attributes

  validates :name,  :presence => true
  validates :description, :presence => true

  has_many :plugins, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
