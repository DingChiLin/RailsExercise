class Group < ActiveRecord::Base
  attr_accessible :name
  has_many :event_groupships
  has_many :events, :through => :event_groupships
end
