class AddRatingToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :rating, :integer
  end
end
