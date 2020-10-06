class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.text :share
      t.timestamps
      t.references :user, foreign_key: true,  null: false
    end
  end
end
