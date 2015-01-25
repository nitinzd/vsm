# Matrimonial
class Mprofile
  include Mongoid::Document

  # Mount uploader for photo upload
  mount_uploader :image, FileUploader

  #Personal info
  field :height, type: Float
  field :religion, type: String
  field :caste, type: String
  field :gothra, type: String
  field :raashi, type: String
  field :sunsign, type: String
  field :mothertongue, type: String
  field :disability, type: String
  field :diet, type: String
  field :languages, type: Hash
  field :drink, type: String
  field :smoke, type: String
  field :complexion, type: String
  #Personal value
  field :p_value, type: String
  #Marital status
  field :m_status, type: String
field :children, type: String
  field :about, type: String
  #Family
  field :f_type, type: String
  field :status, type: String
  field :description, type: String
  #Career
  field :occupation, type: String
  field :employed, type: String
  field :job, type: String
  field :employer, type: String
  field :city, type: String
  #Expectations
  field :qualification, type: String
  #Other Cast/Religion Considered
  field :ocr, type: String
  #Consider Second Marriage?: -
  field :csm, type: String
  #My expectations in my words
  field :words, type: String
  field :image

  # Association
  belongs_to :user
end
