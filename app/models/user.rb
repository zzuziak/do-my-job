class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings
  has_many :rented_jobs, through: :bookings, source: :job # n : n relation
  has_many :owned_jobs, class_name: "Job"
end
