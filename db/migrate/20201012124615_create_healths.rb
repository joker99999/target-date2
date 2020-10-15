class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.string :question1_id
      t.string :question2_id
      t.string :question3_id
      t.string :question4_id
      t.string :question5_id
      t.references :user, foreign_key: true,  null: false
      t.timestamps
    end
  end
end
