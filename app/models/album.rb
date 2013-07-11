class Album < ActiveRecord::Base
  attr_accessible :album_name, :band_id, :cover_art_link

  belongs_to :band
  has_many :tracks, dependent: :destroy

  validates :album_name, presence: true
end
