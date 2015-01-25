class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
#   :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
   field :confirmation_token,   type: String
   field :confirmed_at,         type: Time
   field :confirmation_sent_at, type: Time
   field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
   field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
   field :unlock_token,    type: String # Only if unlock strategy is :email or :both
   field :locked_at,       type: Time

  # Associations
  has_one :profile
  has_one :mprofile
  has_many :posts
    has_many :comments
  has_many :pms

  # Hack for Devise as specified in https://github.com/plataformatec/devise/issues/2949#issuecomment-40520236
  def self.serialize_into_session(record)
    [record.id.to_s, record.authenticatable_salt]
  end
end