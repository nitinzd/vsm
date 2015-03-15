class Post
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :body, type: String
  field :tags, type: String

  # Associations
belongs_to :user
#  has_many :tags
  has_many :comments

  #Nested attributes
  accepts_nested_attributes_for :comments
end
