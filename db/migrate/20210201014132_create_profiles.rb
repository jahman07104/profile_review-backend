class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :image
      t.string :email
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
