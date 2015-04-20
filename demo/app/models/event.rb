class Event < ActiveRecord::Base
  attr_accessible :capacity, :description, :is_public, :name, :category_id, :location_attributes, :group_ids, :status
  has_many :attendees
  has_one :location
  has_many :event_groupships
  has_many :groups, :through => :event_groupships
  belongs_to :category
  validates_presence_of :name
  accepts_nested_attributes_for :location, :allow_destroy => true, :reject_if => :all_blank

  delegate :name, :to => :category, :prefix => true, :allow_nil => true

  def closed?
    self.status == "CLOSED"
  end

  def open?
    !self.closed?
  end

  def open!
    self.status = "OPEN"
    self.save!
  end

  def close!
    self.status = "CLOSED"
    self.save!
  end
end
