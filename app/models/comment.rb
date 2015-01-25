class Comment
  include Mongoid::Document
  field :description, type: String

  # Associations
  belongs_to :post
  belongs_to :user
end
