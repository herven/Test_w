class VehiclesController < ApplicationController
  before_filter :find_vehicle, :except => %w(index new create)

  def index
    @cars = Vehicle.car
    @motos = Vehicle.moto
  end

  def new
    @vehicle = Vehicle.new 
  end

  def create
    @vehicle = Vehicle.new(params[:vehicle])
    if @vehicle.save
      redirect_to :vehicles
    else
      render :action => :new
    end
  end

  def edit
  end

  def update
    if @vehicle.update_attributes(params[:vehicle])
      redirect_to vehicle_path(@vehicle)
    else
      render :action => :edit
    end
  end

  def show
  end

  def destroy    
    @vehicle.destroy 
    redirect_to :vehicles
  end

  protected

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
