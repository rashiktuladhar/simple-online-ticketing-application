class Customer < ActiveRecord::Base
	  after_create :update_ticket_count

	private

	def update_ticket_count 
	    ticketid = Ticket.find(self.ticket_id)
	    noticket = Customer.find(self.no_tickets)
	    if ticketid!=""
	    else
	      update_attribute(:no_tickets, no_tickets-5)	    	
	    end
  	end
end
