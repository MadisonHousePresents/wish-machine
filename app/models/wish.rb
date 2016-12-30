class Wish < ApplicationRecord
  belongs_to :user, required: false

  validates :participant_requirement,
            presence: { message: 'Must enter "If I..." portion of wish.' }

  validates :ef_fulfillment,
            presence: { message: 'Must enter "then Electric Forest will..." portion of wish.' }

  paginates_per 12
end