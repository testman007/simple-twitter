class Tweet < ApplicationRecord
  validates_length_of :description, maximum: 140
  # Setup Model Relationship
  belongs_to :user
  has_many :replys, dependent: :destroy

end
