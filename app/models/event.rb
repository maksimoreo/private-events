class Event < ApplicationRecord
  belongs_to :hoster, class_name: 'User'

  has_many :attendees, class_name: 'User'
end
