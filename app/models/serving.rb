class Serving < ActiveRecord::Base
  belongs_to :user
  belongs_to :meal
  has_many :orders
  acts_as_commentable
  validates :day, presence: true
  validates :price, presence: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, :if => :location_changed? 

end
