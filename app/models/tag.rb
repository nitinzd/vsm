class Tag
  include Mongoid::Document
  field :name, type: String
  # Associations
    belongs_to :post
end
