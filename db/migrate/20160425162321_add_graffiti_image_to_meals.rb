class AddGraffitiImageToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :graffiti_image, :string
  end
end
