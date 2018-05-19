class UpdateMessages < ActiveRecord::Migration[4.2]
  def change

      add_column :messages, :url, :string 

  end
end
