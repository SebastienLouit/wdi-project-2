class Meal < ActiveRecord::Base
  belongs_to :user
  has_many   :servings
  mount_uploader :graffiti_image, GraffitiImageUploader

  validates :title, presence: true, length: { in: 4..22 }

end
