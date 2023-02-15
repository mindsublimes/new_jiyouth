class Admin::ResponsibilitiesController < ApplicationController
  before_action :find_params, only: [:edit, :update, :show, :destroy]
	
	 def index
    @responsibilities = Responsibility.all
  end

  def new
    @responsibility = Responsibility.new
  end

  def create
    @responsibility = Responsibility.create(responsibility_params)
    if @responsibility.save!
      redirect_to admin_responsibilities_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @responsibility.update(responsibility_params)
    redirect_to admin_responsibilities_path
  end

  def show
  end

  def destroy
    @responsibility.destroy
    redirect_to admin_responsibilities_path
  end

  private

  def responsibility_params
    params.require(:responsibility).permit(:title)
  end

  def find_params
    @responsibility = Responsibility.find(params[:id])
  end
end
