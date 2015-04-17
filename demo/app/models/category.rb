class Category < ActiveRecord::Base
  attr_accessible :name, :position
  has_many :events
end
