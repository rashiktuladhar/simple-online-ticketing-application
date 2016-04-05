class AirlinesDatasController < ApplicationController
  def index
    @airlines = AirlinesDatum.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
