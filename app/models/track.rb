class Track < ActiveRecord::Base
  attr_accessible :album_id, :run_time, :track_name

  belongs_to :album
  belongs_to :band

  validates :track_name, presence: true
end
