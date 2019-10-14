class AnswerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :question, :topic, :source_link, :answer_param
end

#these are the available attributes
#t.string "question"
#t.string "topic"
#t.string "source_link"
#t.text "answer"
#t.integer "user_id"