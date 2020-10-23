class CreateQuestioncomments < ActiveRecord::Migration[6.0]
  def change
    create_table :questioncomments do |t|
      t.integer :user_id
      t.integer :question_id
      t.text :text
      t.timestamps
    end
  end
end
