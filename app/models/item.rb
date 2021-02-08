class Item < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :item_categories, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, :through => :bookings, dependent: :destroy
  has_many :categories, through: :item_categories

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
