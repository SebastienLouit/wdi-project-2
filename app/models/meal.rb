class Meal < ActiveRecord::Base
  belongs_to :user
  has_many   :servings

  validates :title, presence: true, length: { in: 5..100 }
  validates :image, presence: true

end
