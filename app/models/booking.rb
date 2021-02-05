class Booking < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :start_date, presence: true
  validates :end_date, presence: true
end
