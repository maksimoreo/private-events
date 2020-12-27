class User < ApplicationRecord
  has_many :hosted_events, class_name: 'Event', foreign_key: :hoster_id

  has_many :attendees_events, foreign_key: :attendee_id
  has_many :attended_events, through: 'attendees_events', source: :attendee

  has_many :upcoming_events, -> { where('event_datetime > ?', DateTime.now) },
    through: 'attendees_events', source: :attendee
  has_many :previous_events, -> { where('event_datetime <= ?', DateTime.now) },
    through: 'attendees_events', source: :attendee

  # def upcoming_events
  #   attended_events.where 'event_datetime > ?', DateTime.now
  # end

  # def previous_events
  #   attended_events.where 'event_datetime < ?', DateTime.now
  # end
end
