class Ticket < ActiveRecord::Base
  belongs_to :airlines_datum

  def airline_name
    airlines_datum.airlines_name
  end

  def type_route
    if route_type=="T"
    	"Two Way"
    else
    	"One Way"
    end
  end

end
