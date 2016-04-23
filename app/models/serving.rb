class Serving < ActiveRecord::Base
  belongs_to :user
  belongs_to :meal

  validates :day, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
