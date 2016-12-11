class Wish < ApplicationRecord
  belongs_to :user

  validates :participant_requirement,
            presence:true

  validates :ef_fulfillment,
            presence: true

  validates :approved,
   					presence: true

end