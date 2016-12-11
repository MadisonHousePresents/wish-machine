class User < ApplicationRecord
  has_one :wish
  accepts_nested_attributes_for :wish

  validates :name,
            presence: true

  validates :phone,
            presence: true

  validates :email,
            presence: true,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Must enter valid email" }

  validates :terms_accepted,
            acceptance:true

end