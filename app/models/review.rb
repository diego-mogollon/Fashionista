class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  has_one :item, :through => :booking
end
