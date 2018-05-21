class CreateChannelMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :channel_memberships do |t|
        t.references :user, foreign_key: true
        t.references :channel
        t.boolean :admin
    end
  end
end
