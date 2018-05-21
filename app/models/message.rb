class Message < ActiveRecord::Base

  belongs_to :user
  belongs_to :channel

  # validates :content, presence: true, length: { maximum: 140 }
  # validates :author, presence: true, length: { maximum: 25 }
  
end