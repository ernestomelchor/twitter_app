class User < ApplicationRecord
  has_many :tweets
  validates :username, presence: true, uniqueness: true
  validates :user_email, presence: true, uniqueness: true
  validates_format_of :user_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
