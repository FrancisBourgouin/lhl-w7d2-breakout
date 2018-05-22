class ChannelMembership < ActiveRecord::Base
  belongs_to :player
  belongs_to :channel

end