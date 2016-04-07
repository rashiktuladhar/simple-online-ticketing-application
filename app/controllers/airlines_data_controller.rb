class AirlinesDataController < ApplicationController

  # do this before calling any action below (need to call the action find airlines within private area for only the 4 operation mentioned before calling index and other action)
  before_action :find_airlines, only: [:show, :edit, :update, :destroy]

  def index
    # @airlines = AirlinesDatum.all

    @airlines = AirlinesDatum.paginate(:page => params[:page], :per_page => 10)

  end

  def new
    @airline = AirlinesDatum.new
  end

  def create
    
    @airline = AirlinesDatum.new(airline_params)

    if @airline.save
      flash[:success] = "Airlines added successfully."
      redirect_to airlines_data_path
    else
      render 'new'
    end

  end

  def show
  end

  def edit
  end

  def update
    if @airline.update(airline_params)
      flash[:success] = "Airlines updated successfully."
      redirect_to airlines_data_path
    else
      render 'edit'
    end
  end  

  def destroy
    @airline.destroy
    flash[:success] = "Airlines Deleted successfully."
    redirect_to airlines_data_path
  end



  private

  def airline_params
    params.require(:airlines_datum).permit(:airlines_name ,:airlines_address ,:airlines_contact ,:airlines_plane_capacity)
  end

  # params for getting the id of the airlines for DRY (delete, update and show)
  def find_airlines
    @airline = AirlinesDatum.find(params[:id])
  end


end
