#class User
#  include Mongoid::Document
#   include Mongoid::Timestamps
# end


class User
  include Mongoid::Document

  field :name, type: String
  field :email, type: String
  field :age, type: Integer

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
