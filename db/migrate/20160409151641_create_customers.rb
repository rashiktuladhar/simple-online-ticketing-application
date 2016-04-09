class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :ticket_id
      t.string :customer_name
      t.string :customer_address
      t.string :customer_contact
      t.string :customer_route_type
      t.string :customer_source
      t.string :customer_destination
      t.date :departure_date
      t.date :arrival_date
      t.integer :no_tickets

      t.timestamps null: false
    end
  end
end
