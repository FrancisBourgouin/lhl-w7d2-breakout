class UpdateMessages < ActiveRecord::Migration
  def change

      add_column :messages, :url, :string 

  end
end
