class Ticket < ActiveRecord::Base
	belongs_to :airlines_datum

	def airline_name
		airlines_datum.airlines_name
	end
end
