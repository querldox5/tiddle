class User
  include Dynamoid::Document

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :trackable,
         #:validatable Triggers callback to will_save_change_to_email?, fails with dynamoid
         :token_authenticatable

  has_many :authentication_tokens

  field :email, :string, default: ''
  field :encrypted_password, :string, default: ''
  field :reset_password_token, :string
  field :reset_password_sent_at, :datetime
  field :sign_in_count, :integer, default: 0
  field :current_sign_in_at, :datetime
  field :last_sign_in_at, :datetime
  field :current_sign_in_ip, :string
  field :nick_name, :string
end
