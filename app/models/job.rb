class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :bookings, dependent: :destroy


  scope :status, -> { joins(:bookings).where(bookings: {status: [0,2]})}
  scope :not_booked, -> { joins(:bookings).where(:bookings_count == 0)}

  include PgSearch
  pg_search_scope :search,
  against: [ :title, :description, :location ],
  using: {
    tsearch: { prefix: true }
  }
  validates :title, presence: true
  validates :category, presence: true, inclusion: {in: ["arts & design", "business & finance", "science", "academia", "sports & events", "services", "gastronomy", "entertainment", "transportation", "politics", "healthcare"]}
  validates :price, presence: true
  validates :date, presence: true
end
