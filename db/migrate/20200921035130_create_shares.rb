class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.text :share
      t.timestamps
    end
  end
end
