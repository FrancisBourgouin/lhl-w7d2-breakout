class User < ActiveRecord::Base
  has_many :messages
  has_many :channel_memberships
  has_many :channels, through: :channel_memberships 

end