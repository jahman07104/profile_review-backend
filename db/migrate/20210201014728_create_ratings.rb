class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :profile_id
      t.integer :star

      t.timestamps
    end
  end
end
