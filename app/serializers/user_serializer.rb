class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :answers
  #has_many :answers
end
