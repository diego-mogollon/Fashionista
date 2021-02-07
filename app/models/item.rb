class Item < ApplicationRecord
  belongs_to :user
  has_many :item_categories
  has_many :bookings, dependent: :destroy
  has_many :reviews, :through => :bookings, dependent: :destroy
  has_many :categories, through: :item_categories
  has_one_attached :photo

end
