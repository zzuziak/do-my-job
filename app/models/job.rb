class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :category, presence: true, inclusion: {in: ["arts & design", "business & finance", "science", "academia", "sports & events", "services", "gastronomy", "entertainment", "transportation", "politics", "healthcare"]}
  validates :price, presence: true
  validates :date, presence: true

end
