class User < ApplicationRecord
  has_one :wish
  accepts_nested_attributes_for :wish

  validates :name,
            presence: { message: 'Must enter name.' }

  validates :phone,
            presence: { message: 'Must enter phone number.' }

  validates :email,
            presence: { message: 'Must enter email.' },
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Must enter valid email." }

  validates :terms_accepted,
            acceptance: {message: 'Must agree to the Terms & Conditions of the Official Contest Rules.'}

end