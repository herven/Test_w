class CategoriesController < ApplicationController
  
  before_filter :find_category, :except => %w(index new create)

  def index
    @categories = Category.all :conditions => "parent_id is NULL"
  end

  def new
    @category = Category.new 
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to category_path(@category) 
    else
      render :action => :new
    end
  end

  def edit
  end

  def update
    if @category.update_attributes(params[:category])
      redirect_to category_path(@category)
    else
      render :action => :edit
    end
  end

  def show
  end

  def destroy    
    @category.destroy 
    redirect_to root_path
  end

  protected

  def find_category
    @category = Category.find(params[:id])
  end
end
