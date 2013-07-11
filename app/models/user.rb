class User < ActiveRecord::Base
  attr_accessible :email, :session_token, :activation_token

  has_many :notes, dependent: :destroy

  validates :email, presence: true, uniqueness: {scope: :email}
end
