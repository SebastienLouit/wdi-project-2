class Serving < ActiveRecord::Base
  belongs_to :user
  belongs_to :meal
  has_many :orders

  validates :day, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
