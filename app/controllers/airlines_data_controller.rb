class AirlinesDataController < ApplicationController
  def index
    @airlines = AirlinesDatum.all
  end

  def new
    @airline = AirlinesDatum.new
  end

  def create
    
    @airline = AirlinesDatum.new(airline_params)

    if @airline.save
      flash[:success] = "Airlines added successfully."
      redirect_to root_path
    else
      render 'new'
    end

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def airline_params
    params.require(:AirlinesDatum).permit(:airlines_name ,:airlines_address ,:airlines_contact ,:airlines_plane_capacity)
  end

end
