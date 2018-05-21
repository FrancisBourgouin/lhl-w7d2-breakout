class AddTimestampsMessages < ActiveRecord::Migration[5.2]
  def change
    change_table :messages do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
