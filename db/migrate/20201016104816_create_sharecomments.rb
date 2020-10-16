class CreateSharecomments < ActiveRecord::Migration[6.0]
  def change
    create_table :sharecomments do |t|
      t.integer :user_id
      t.integer :share_id
      t.text :text
      t.timestamps
    end
  end
end
