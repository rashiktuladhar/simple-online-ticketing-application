  class TicketsController < ApplicationController
 
  before_action :find_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket =  Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      flash[:success] = "Ticket details added successfully."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @ticket.update(ticket_params)
      flash[:success] = "Ticket details updated successfully."
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @ticket.destroy
      flash[:success] = "Ticket details deleted successfully."
      redirect_to root_path
  end

  def edit
  end

  private

  def ticket_params
    params.require(:ticket).permit(:airlines_data_id ,:route_type ,:from_country ,:to_country, :departure_date, :arrival_date, :no_tickets, :ticket_price)
  end

  # params for getting the id of the airlines for DRY (delete, update and show)
  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

end
