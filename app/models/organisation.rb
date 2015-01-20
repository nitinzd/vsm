class Organisation
  include Mongoid::Document
  include Mongoid::Slug
  field :name, :type => String
slug :name
  field :description, :type => String
end
