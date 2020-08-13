class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.references :listing, foreign_key: true
      t.integer :guest_id

      t.timestamps
    end
  end
end
