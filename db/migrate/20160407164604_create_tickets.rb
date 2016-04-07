class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :airlines_datum_id
      t.string :route_type
      t.string :from_country
      t.string :to_country
      t.date :departure_date
      t.date :arrival_date
      t.integer :no_tickets
      t.integer :ticket_price

      t.timestamps null: false
    end
  end
end
