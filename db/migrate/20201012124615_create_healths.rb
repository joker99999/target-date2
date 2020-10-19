class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.text :question1_text
      t.text :question2_text
      t.text :question3_text
      t.text :question4_text
      t.text :question5_text
      t.references :user, foreign_key: true,  null: false
      t.timestamps
    end
  end
end
