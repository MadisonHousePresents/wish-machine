class Wish < ApplicationRecord
  belongs_to :user, required: false

  validates :participant_requirement,
            presence: { message: 'Must enter "If I..." portion of wish.' },
            length: { maximum: 350 }

  validates :ef_fulfillment,
            presence: { message: 'Must enter "then Electric Forest will..." portion of wish.' },
            length: { maximum: 350 }

  paginates_per 12
end