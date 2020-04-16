class Subscription < ApplicationRecord
  # Adds in the friendlyId into the model
  extend FriendlyId
  # Sets the default find finder to slugged but defaults if not found to default finders like ID
  friendly_id :uuid, use: %i[slugged finders]

  belongs_to :publication

  validates :name, presence: true
end
