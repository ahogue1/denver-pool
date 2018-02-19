class Contact < ApplicationRecord
  validates :email, :first_name, :last_name, presence: true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
end
