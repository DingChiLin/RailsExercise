class EventGroupship < ActiveRecord::Base
  attr_accessible :event_id, :group_id
  belongs_to :event
  belongs_to :group
end
