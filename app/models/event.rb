class Event < ApplicationRecord
  belongs_to :hoster, class_name: 'User'
end
