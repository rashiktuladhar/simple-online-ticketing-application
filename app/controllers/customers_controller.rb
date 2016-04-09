class CustomersController < ApplicationController
  
  layout "client"	
	
  before_action :find_ticket, only: [:new]
  before_action :find_booked_ticket, only: [:show]

  def index
  end

  def show
  end

  def new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = "Ticket Issued successfully."
      redirect_to customer_path(@customer.id)
    else
      render 'new'
    end
  end

private
  def find_ticket
    @customer = Customer.new
    @ticket = Ticket.find(params[:book])
  end

  def find_booked_ticket
    @customer_ticket = Customer.find(params[:id])
    @ticket_details = Ticket.find(@customer_ticket.ticket_id)
  end

  def customer_params
    params.require(:customer).permit(:ticket_id ,:customer_name ,:customer_address ,:customer_contact, :customer_route_type, :customer_source, :customer_destination, :departure_date, :arrival_date, :no_tickets)
  end

end
