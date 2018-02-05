class Reply < ApplicationRecord
  # Setup Model Relationship
  belongs_to :user
  belongs_to :tweet

end
