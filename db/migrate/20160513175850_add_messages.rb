class AddMessages < ActiveRecord::Migration[4.2]
  def change

    create_table  :messages do |t|
      t.string :title
      t.string :author
      t.string :content
    
    end
  end
end
