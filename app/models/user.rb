class User < ApplicationRecord
  has_many :hosted_events, foreign_key: :hoster_id, class_name: 'Event'
  has_many :event_attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :event_attendances #, source: :attended_event

  has_many :upcoming_events, -> { where('event_datetime > ?', DateTime.now) },
    through: :event_attendances, source: :attended_event
  has_many :previous_events, -> { where('event_datetime <= ?', DateTime.now) },
    through: :event_attendances, source: :attended_event

  # def upcoming_events
  #   attended_events.where 'event_datetime > ?', DateTime.now
  # end

  # def previous_events
  #   attended_events.where 'event_datetime < ?', DateTime.now
  # end
end
