class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :question
      t.string :topic
      t.string :source_link
      t.text :answer
      t.integer :user_id

      t.timestamps
    end
  end
end
