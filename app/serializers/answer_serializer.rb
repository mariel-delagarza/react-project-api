class AnswerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :question 
end

#these are the available attributes
#t.string "question"
#t.string "topic"
#t.string "source_link"
#t.text "answer"
#t.integer "user_id"