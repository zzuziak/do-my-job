class Job < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch
  pg_search_scope :text_search,
  against: [ :title, :description, :location, :category ],
  using: {
    tsearch: { prefix: true }
  }
  
  validates :title, presence: true
  validates :category, presence: true, inclusion: {in: ["arts & design", "business & finance", "science", "academia", "sports & events", "services", "gastronomy", "entertainment", "transportation", "politics", "healthcare"]}
  validates :price, presence: true
  validates :date, presence: true

  def self.unbooked_or_bookable
    sql = <<-SQL
      SELECT DISTINCT jobs.id FROM jobs
      FULL JOIN bookings
      ON jobs.id = bookings.job_id
      WHERE bookings.job_id IS NULL
      OR bookings.status IN (0, 2);
    SQL
    ids = find_by_sql(sql).pluck(:id)
    where(id: ids)
  end
end
