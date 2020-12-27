class Event < ApplicationRecord
  belongs_to :hoster, class_name: 'User'

  has_many :attendees_events, foreign_key: :attended_event_id
  has_many :attendees, through: :attendees_events, source: :attended_event
end
