class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :email, : { case_sensitive: false }

  validate validate_email
  has_secure_password

  def validate_email
    if email !~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:email, "is not an email")
    end
  end
end
