class Profile
  include Mongoid::Document

  field :name, type: String
  field :nickname, type: String
  field :local_address, type: String
  field :permanent_address, type: String
  field :phone_number, type: Integer
  field :date_of_birth, type: Date
  field :image

  # Associations
  belongs_to :user
  # Mount uploader for photo upload
  mount_uploader :image, FileUploader

end
