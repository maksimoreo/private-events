class Event < ApplicationRecord
  belongs_to :hoster, class_name: 'User'

  has_many :event_attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendances #, source: :attendee

  scope :past, -> { where('event_datetime <= ?', DateTime.now) }
  scope :upcoming, -> { where('event_datetime > ?', DateTime.now) }
end
