class Customer < ActiveRecord::Base
	  after_create :update_ticket_count

	private

	def update_ticket_count 
	    ticketid = Ticket.find(self.ticket_id)
	    noticket = self.no_tickets
	    if ticketid
	    	ticketid.update_attribute(:no_tickets, ticketid.no_tickets - noticket)
	    else    	
	    end
  	end
end
