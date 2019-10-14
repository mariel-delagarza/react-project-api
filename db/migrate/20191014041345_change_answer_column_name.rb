class ChangeAnswerColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :answers, :answer, :answer_param
  end
end
