class Message < ActiveRecord::Base

  belongs_to :user
  belongs_to :channel

  validates :content, presence: true, length: { maximum: 140 }
  validates :user, :channel, presence: true


end