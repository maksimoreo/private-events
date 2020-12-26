class User < ApplicationRecord
  has_many :hosted_events, class_name: 'Event', foreign_key: :hoster_id
end
