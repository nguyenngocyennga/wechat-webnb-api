class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :apartment, foreign_key: true
      t.date :arrival_date
      t.date :departure_date
      t.integer :total_price
      t.boolean :booking_status

      t.timestamps
    end
  end
end
