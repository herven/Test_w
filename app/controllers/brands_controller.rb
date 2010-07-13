class BrandsController < ApplicationController
  before_filter :find_brand, :except => %w(index new create)

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new 
  end

  def create
    @brand = Brand.new(params[:brand])
    if @brand.save
      redirect_to :brands
    else
      render :action => :new
    end
  end

  def edit
  end

  def update
    if @brand.update_attributes(params[:brand])
      redirect_to brand_path(@brand)
    else
      render :action => :edit
    end
  end

  def show
  end

  def destroy    
    @brand.destroy 
    redirect_to :brands
  end

  protected

  def find_brand
    @brand = Brand.find(params[:id])
  end
end
