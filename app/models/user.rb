class User < ApplicationRecord
  has_one :wish
  accepts_nested_attributes_for :wish

  validates :name,
            presence: { message: 'Must enter name.' }

  validates :email,
            presence: { message: 'Must enter email.' },
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Must enter valid email." }

  validates :phone,
            presence: { message: 'Must enter phone number.' }

  validates :city,
            presence: { message: 'Must enter city.' }

  validates :state,
            presence: { message: 'Must enter state.' }

  validates :zip_code,
            presence: { message: 'Must enter zip code.' }

  validates :terms_accepted,
            acceptance: {message: 'Must agree to the Terms & Conditions of the Official Contest Rules.'}

end