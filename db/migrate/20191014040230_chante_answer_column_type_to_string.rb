class ChanteAnswerColumnTypeToString < ActiveRecord::Migration[5.2]
  def change
    change_column :answers, :answer, :string
  end
end
