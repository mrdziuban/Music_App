class Band < ActiveRecord::Base
  attr_accessible :band_name

  has_many :albums, dependent: :destroy
  has_many :tracks, through: :albums

  validates :band_name, presence: true, uniqueness: true
end
