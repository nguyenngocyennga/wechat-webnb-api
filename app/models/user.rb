class User < ApplicationRecord
  has_many :apartments, dependent: :destroy
  has_many :bookings
  validates :phone_number, uniqueness: true, presence: true
  validates :name, presence: true
end
