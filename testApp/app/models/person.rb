class Person
  include Mongoid::Document
  field :name, type: String
  field :gender, type: String
  field :age, type: Integer
end


