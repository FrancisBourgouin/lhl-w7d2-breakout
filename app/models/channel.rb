class Channel < ActiveRecord::Base

  has_many :messages
  has_many :channel_memberships
  has_many :users, through: :channel_memberships


end
