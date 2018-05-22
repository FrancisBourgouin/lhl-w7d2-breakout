class Message < ActiveRecord::Base

  belongs_to :player
  belongs_to :channel

  validates :content, presence: true, length: { maximum: 140 }
  validates :player, :channel, presence: true


end