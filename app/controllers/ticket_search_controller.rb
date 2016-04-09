class TicketSearchController < ApplicationController

  layout "client"	
	
  before_action :find_ticket, only: [:book]

  def index
	 	@ticket_lists = Ticket.paginate(:page => params[:page], :per_page => 2)
  end

  def show
  end

  def book
  end

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

end
