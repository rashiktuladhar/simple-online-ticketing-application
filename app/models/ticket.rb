class Ticket < ActiveRecord::Base
  belongs_to :airlines_datum

  def airline_name
    airlines_datum.airlines_name
  end

  def self.search(search)
    if search
    	binding.pry
      find(:all, :conditions => ['airlines_name LIKE ?', "%#{search}%"])
    else
      
    end
  end

end
