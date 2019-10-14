class Answer < ApplicationRecord
  belongs_to :user

  validates :question, :topic, :source_link, :answer, :user, presence: :true  
end
