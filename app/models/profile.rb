class Profile
  include Mongoid::Document

  # Mount uploader for photo upload
  mount_uploader :image, FileUploader
  field :name, type: String
  field :local_address, type: String
  field :permanent_address, type: String
  field :phone_number, type: Integer
  field :dateOfBirth, type: Date
  field :image
  # Associations
  belongs_to :user
end
