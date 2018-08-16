class Review < ApplicationRecord
  belongs_to :user
  belongs_to :job

  validates :message, presence: true
  validates :title, presence: true
  validates :rating, presence: true
end
