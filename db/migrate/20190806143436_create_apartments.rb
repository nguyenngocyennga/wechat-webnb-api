class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :city
      t.integer :capacity
      t.string :address
      t.integer :price
      t.text :description
      t.string :photo
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
