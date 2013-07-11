class Note < ActiveRecord::Base
  attr_accessible :message, :track_id, :user_id

  belongs_to :track
  belongs_to :user

  validates :message, presence: true
end
