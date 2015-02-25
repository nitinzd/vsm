class Pm
  include Mongoid::Document
# Proud moments
  # Mount uploader for photo upload
  mount_uploader :image, FileUploader

  field :caption, type: String
  field :description, type: String
  field :image
  # Associations
  belongs_to :user
end
