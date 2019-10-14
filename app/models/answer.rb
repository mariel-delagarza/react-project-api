class Answer < ApplicationRecord
  belongs_to :user

  validates :question, :topic, :source_link, :answer_param, :user, presence: :true  
end
