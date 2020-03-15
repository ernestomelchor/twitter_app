class Tweet < ApplicationRecord
  belongs_to :user

  def friendly_updated_at
    updated_at.strftime("%A, %b %d, %Y at:%l:%M %p")
  end

  def friendly_created_at
    created_at.strftime("%A, %b %d, %Y at:%l:%M %p")
  end
end
