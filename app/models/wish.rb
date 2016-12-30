class Wish < ApplicationRecord
  belongs_to :user, required: false

  validates :participant_requirement,
            presence:true

  validates :ef_fulfillment,
            presence: true

  paginates_per 18
end