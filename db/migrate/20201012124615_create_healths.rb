class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4
      t.string :question5
      t.references :user, foreign_key: true,  null: false
      t.timestamps
    end
  end
end
