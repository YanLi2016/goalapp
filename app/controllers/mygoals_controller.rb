class MygoalsController < ApplicationController
  before_action :set_mygoal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mygoals = Mygoal.all
    respond_with(@mygoals)
  end

  def show
    respond_with(@mygoal)
  end

  def new
    @mygoal = Mygoal.new
    respond_with(@mygoal)
  end

  def edit
  end

  def create
    @mygoal = Mygoal.new(mygoal_params)
    flash[:notice] = 'Mygoal was successfully created.' if @mygoal.save
    respond_with(@mygoal)
  end

  def update
    flash[:notice] = 'Mygoal was successfully updated.' if @mygoal.update(mygoal_params)
    respond_with(@mygoal)
  end

  def destroy
    @mygoal.destroy
    respond_with(@mygoal)
  end

  private
    def set_mygoal
      @mygoal = Mygoal.find(params[:id])
    end

    def mygoal_params
      params.require(:mygoal).permit(:name, :start, :finish, :days)
    end
end
