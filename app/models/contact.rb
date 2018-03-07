class Contact < ApplicationRecord
  validates :first_name, presence: {message: "Provide your name"}
  validate :phone_or_email_required
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  def phone_or_email_required
    if !phone.present? && !email.present?
      errors.add(:phone, "Add either phone or email")
    end
  end

end
