class UpdateMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :url, :string
    add_reference :messages, :user, foreign_key: true
  end
end
