class CreateChannelMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :channel_memberships do |t|
        t.references :player
        t.references :channel
        t.boolean :admin
    end
  end
end
