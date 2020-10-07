class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :title
      t.timestamps
      t.references :user, foreign_key: true,  null: false
    end
  end
end
